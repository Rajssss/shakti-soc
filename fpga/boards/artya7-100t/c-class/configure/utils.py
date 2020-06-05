# See LICENSE.incore for license details
import pathlib
import subprocess
import logging
import argparse
import operator
import shutil
import sys

import ruamel
from ruamel.yaml import YAML
import re

yaml = YAML(typ="rt")
yaml.default_flow_style = False
yaml.allow_unicode = True

logger = logging.getLogger(__name__)

def load_yaml(foo):
    try:
        with open(foo, "r") as file:
            return yaml.load(file)
    except ruamel.yaml.constructor.DuplicateKeyError as msg:
        logger = logging.getLogger(__name__)
        error = "\n".join(str(msg).split("\n")[2:-7])
        logger.error(error)
        raise SystemExit


class ColoredFormatter(logging.Formatter):
    """                                                                         
        Class to create a log output which is colored based on level.           
    """

    def __init__(self, *args, **kwargs):
        super(ColoredFormatter, self).__init__(*args, **kwargs)
        self.colors = {
            'DEBUG': '\033[94m',
            'INFO': '\033[92m',
            'WARNING': '\033[93m',
            'ERROR': '\033[91m',
        }

        self.reset = '\033[0m'

    def format(self, record):
        msg = str(record.msg)
        level_name = str(record.levelname)
        name = str(record.name)
        color_prefix = self.colors[level_name]
        return '{0}{1:<9s} : {2}{3}'.format(color_prefix,
                                            '[' + level_name + ']', msg,
                                            self.reset)


def setup_logging(log_level):
    """Setup logging                                                            
                                                                                
        Verbosity decided on user input                                         
                                                                                                                                                   
        :param log_level: User defined log level                             
                                                                                
        :type log_level: str                                                               
    """
    numeric_level = getattr(logging, log_level.upper(), None)

    if not isinstance(numeric_level, int):
        print(
            "\033[91mInvalid log level passed. Please select from debug | info | warning | error\033[0m"
        )
        raise ValueError("{}-Invalid log level.".format(log_level))

    logging.basicConfig(level=numeric_level)


class SortingHelpFormatter(argparse.HelpFormatter):

    def add_arguments(self, actions):
        actions = sorted(actions, key=operator.attrgetter('option_strings'))
        super(SortingHelpFormatter, self).add_arguments(actions)


def config_cmdline_args():
    parser = argparse.ArgumentParser(formatter_class=SortingHelpFormatter,
                                     prog="core_config",
                                     description="C-Class Core Configurator")
    parser.add_argument('-ispec','--ispec',
                        type=str,
                        metavar='YAML',
                        default='core_config.yaml',
                        help='The YAML which contains the specs.')
    parser.add_argument('--verbose',
                        action='store',
                        default='info',
                        help='debug | info | warning | error',
                        metavar="")
    parser.add_argument('--clean',
                        action='store_true',
                        default=None,
                        help='Clean the dependencies and other collaterals'
                        )
    return parser

def which(program):
    x = shutil.which(program)
    if x is None:
        logger.error(program+' not found')
        sys.exit(0)
    else:
        return x

def find_packages(file_contents):
    file_lines = file_contents.split('\n')
    pattern = re.compile(r'import\s+(.*)\s*::')
    import_lines = filter(lambda x :
        pattern.search(x) != None, file_lines)
    packages = map(lambda x: 
        pattern.search(x).groups()[0].strip(), import_lines)

    return list(packages)

def recurse_packages(package, files, rules, done, prelude):
    # package file
    try:
        package_file = list(filter(lambda x : package.strip() + '.bsv' in x,
            files))[0]
    except IndexError as e:
        return

    with open(package_file, 'r') as f:
        contents = f.read()

    # build rule
    deps = list(filter(lambda x : not x in prelude, find_packages(contents)))
    deps_string = ', '.join(deps)

    rule = '''
{0} = custom_target('{0}',
    output : '{0}.bo',
    input : '{1}',
    command : [bsc] + options + ['@INPUT@'],
    depends : [{2}] )'''.format(
        package, package_file, deps_string)

    rules += [(len(deps), rule)]
    done += [package]

    for p in deps:
        if p in done:
            continue
        else:
            recurse_packages(p, files, rules, done, prelude)
    return list(rules)

class Command():
    """
    Class for command build which is supported
    by :py:mod:`suprocess` module. Supports automatic
    conversion of :py:class:`pathlib.Path` instances to
    valid format for :py:mod:`subprocess` functions.
    """

    def __init__(self, *args, pathstyle='auto', ensure_absolute_paths=False):
        """Constructor.

        :param pathstyle: Determine the path style when adding instance of
            :py:class:`pathlib.Path`. Path style determines the slash type
            which separates the path components. If pathstyle is `auto`, then
            on Windows backslashes are used and on Linux forward slashes are used.
            When backslashes should be prevented on all systems, the pathstyle
            should be `posix`. No other values are allowed.

        :param ensure_absolute_paths: If true, then any passed path will be
            converted to absolute path.

        :param args: Initial command.

        :type pathstyle: str

        :type ensure_absolute_paths: bool
        """
        self.ensure_absolute_paths = ensure_absolute_paths
        self.pathstyle = pathstyle
        self.args = []

        for arg in args:
            self.append(arg)

    def append(self, arg):
        """Add new argument to command.

        :param arg: Argument to be added. It may be list, tuple,
            :py:class:`Command` instance or any instance which
            supports :py:func:`str`.
        """
        to_add = []
        if type(arg) is list:
            to_add = arg
        elif type(arg) is tuple:
            to_add = list(arg)
        elif isinstance(arg, type(self)):
            to_add = arg.args
        elif isinstance(arg, str) and not self._is_shell_command():
            to_add = shlex.split(arg)
        else:
            # any object which will be converted into str.
            to_add.append(arg)

        # Convert all arguments to its string representation.
        # pathlib.Path instances
        to_add = [
            self._path2str(el) if isinstance(el, pathlib.Path) else str(el)
            for el in to_add
        ]
        self.args.extend(to_add)

    def clear(self):
        """Clear arguments."""
        self.args = []

    def run(self, **kwargs):
        """Execute the current command.

        Uses :py:class:`subprocess.Popen` to execute the command.

        :return: The return code of the process     .
        :raise subprocess.CalledProcessError: If `check` is set
                to true in `kwargs` and the process returns
                non-zero value.
        """
        kwargs.setdefault('shell', self._is_shell_command())
        cwd = self._path2str(kwargs.get(
            'cwd')) if not kwargs.get('cwd') is None else self._path2str(
                os.getcwd())
        kwargs.update({'cwd': cwd})
        logger.debug(cwd)
        # When running as shell command, subprocess expects
        # The arguments to be string.
        logger.debug(str(self))
        cmd = str(self) if kwargs['shell'] else self
        x = subprocess.Popen(cmd,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE,
                             **kwargs)
        out, err = x.communicate()
        out = out.rstrip()
        err = err.rstrip()
        if x.returncode != 0:
            if out:
                logger.error(out.decode("ascii"))
            if err:
                logger.error(err.decode("ascii"))
        else:
            if out:
                logger.warning(out.decode("ascii"))
            if err:
                logger.warning(err.decode("ascii"))
        return x.returncode

    def _is_shell_command(self):
        """
        Return true if current command is supposed to be executed
        as shell script otherwise false.
        """
        return any('|' in arg for arg in self.args)

    def _path2str(self, path):
        """Convert :py:class:`pathlib.Path` to string.

        The final form of the string is determined by the
        configuration of `Command` instance.

        :param path: Path-like object which will be converted
                     into string.
        :return: String representation of `path`
        """
        path = pathlib.Path(path)
        if self.ensure_absolute_paths and not path.is_absolute():
            path = path.resolve()

        if self.pathstyle == 'posix':
            return path.as_posix()
        elif self.pathstyle == 'auto':
            return str(path)
        else:
            raise ValueError(f"Invalid pathstyle {self.pathstyle}")

    def __add__(self, other):
        cmd = Command(self,
                      pathstyle=self.pathstyle,
                      ensure_absolute_paths=self.ensure_absolute_paths)
        cmd += other
        return cmd

    def __iadd__(self, other):
        self.append(other)
        return self

    def __iter__(self):
        """
        Support iteration so functions from :py:mod:`subprocess` module
        support `Command` instance.
        """
        return iter(self.args)

    def __repr__(self):
        return f'<{self.__class__.__name__} args={self.args}>'

    def __str__(self):
        return ' '.join(self.args)

class shellCommand(Command):
    """
        Sub Class of the command class which always executes commands as shell commands.
    """

    def __init__(self, *args, pathstyle='auto', ensure_absolute_paths=False):
        """
        :param pathstyle: Determine the path style when adding instance of
            :py:class:`pathlib.Path`. Path style determines the slash type
            which separates the path components. If pathstyle is `auto`, then
            on Windows backslashes are used and on Linux forward slashes are used.
            When backslashes should be prevented on all systems, the pathstyle
            should be `posix`. No other values are allowed.

        :param ensure_absolute_paths: If true, then any passed path will be
            converted to absolute path.

        :param args: Initial command.

        :type pathstyle: str

        :type ensure_absolute_paths: bool

        """
        return super().__init__(*args,
                                pathstyle=pathstyle,
                                ensure_absolute_paths=ensure_absolute_paths)

    def _is_shell_command(self):
        return True


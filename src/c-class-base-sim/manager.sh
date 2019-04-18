### shakti-soc manager

### Constants
VERSION=0.1.0
BRANCH=feature/soc-templates

CCLASS_REPO=https://gitlab.com/anmolsahoo25/c-class 
CACHES_REPO=https://gitlab.com/shaktiproject/uncore/caches_mmu
COMMON_REPO=https://gitlab.com/shaktiproject/common_bsv
DEVICES_REPO=https://gitlab.com/shaktiproject/uncore/devices
FABRICS_REPO=https://gitlab.com/shaktiproject/uncore/fabrics


### Functions to be re-used

## Usage help function
usage () {
    printf "\n"
    printf "shakti-soc manager ${VERSION}\n"
    printf "========================\n"
    printf "\n"
    printf "Usage: ./manager.sh <command> [options]\n"
    printf "\n"
    printf "Available commands: \n\n"
    printf "./manager.sh help \t\t Displays help\n"
    exit 1
}

## Die function
err() { echo "$*" 1>&2 ;}

## Checking dependencies function
update_deps () {
    printf "\n"
    git clone -b $BRANCH --single-branch $CCLASS_REPO deps/c-class || err "c-class repo already exists"
    git clone $CACHES_REPO deps/caches_mmu || err "caches_mmu already exists"
    git clone --recursive $COMMON_REPO deps/common_bsv || err "common_bsv already exists"
    git clone $DEVICES_REPO deps/devices || err "devices already exists"
    git clone $FABRICS_REPO deps/fabrics || err "fabrics already exists"
}

### Main Script

## Check if no command line args passed, print help and exit
if [ "$#" -eq 0 ]; then
    usage
fi

case $1 in
    help)
        usage
        ;;
    update_deps)
        printf "\nshakti-soc manager ${VERSION} - update_deps\n"
        printf "======================================\n"
        update_deps
        ;;
esac

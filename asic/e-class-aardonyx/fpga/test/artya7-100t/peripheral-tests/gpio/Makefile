CLEAR ?=
directories := $(shell find $(PWD)/* -maxdepth 0 -type d -printf "%f\n")

#if there are no *.o files to delete, you might still end up with an error message. To suppress these, add the following

all:
	@$(foreach dir,$(directories),(cd $(dir) && make all)&&):


clean:
ifeq ($(CLEAR),)
	@find -type d -name output -a -prune -exec rm -rf {} \;
	@echo "cleaned"
else
	@rm -fr ./$(CLEAR)/output
	@echo "cleaned"
endif

#    2>/dev/null pipes any error message to /dev/null - so you won't see any errors
#    the - in front of the command makes sure that make ignores a non-zero return code


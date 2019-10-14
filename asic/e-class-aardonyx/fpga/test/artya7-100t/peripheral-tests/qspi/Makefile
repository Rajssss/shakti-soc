CLEAR=
directories := $(shell find $(PWD)/* -maxdepth 0 -type d -printf "%f\n")

all:
	@echo $(directories)
	@$(foreach dir,$(directories),(cd $(dir) && make all) &&):

clean:
ifeq ($(CLEAR),)
	@find -type d -name output -a -prune -exec rm -rf {} \;
	@echo "cleaned"
else
	@rm -fr ./$(CLEAR)/output
	@echo "cleaned"
endif

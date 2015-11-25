################################################################################
#Lib_ZY Top Makefile.
################################################################################
export MAKE             = make -j4
export MAKE_OS          = linux # win32 mac

export TOPDIR           = $(shell pwd)

#Where to put object files *.o
export BUILD_PATH       = $(TOPDIR)/build

#Where to put final applications
export BIN_PATH         = $(TOPDIR)/bin

#Where to put libraries
export LIBS_PATH        = $(TOPDIR)/libs
export LIB_MAKE_TYPE    = shared # static #


.PHONY: all apps libs
all :libs apps

libs:
	@echo "Compiling librarys of PIL"
	$(MAKE) -C src

apps: libs
	@echo "Compiling apps of PIL"
	$(MAKE) -C apps

clean :
	rm -r $(BUILD_PATH)/* $(BIN_PATH)/* 

clean_tmp:
	rm -r $(BUILD_PATH)/*



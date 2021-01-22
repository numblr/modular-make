SHELL=/bin/bash


project_root ?= $(realpath ..)
project_name = $(notdir $(realpath .))
project_version ?= 0.0.1
project_repo ?= $(project_root)/repo

dist = $(project_name).$(project_version).dist

dependencies = $(addprefix $(project_root)/, \
		module_three)


.DEFAULT_GOAL := install

.PHONY: depend
depend:
	echo ${project_root}/$(project_name): $(dependencies) > makefile.d

.PHONY: clean
clean:
	rm -rf $(dist)
	rm -rf makefile.d

.PHONY: install
install: build
	rm -rf $(project_name).%.dist
	cp $(dist) $(project_repo)/

.PHONY: build
build: dist

dist:
	echo "Build 1"
	echo "Build 1" > $(dist)
	cat $(project_repo)/module_three.$(project_version).dist >> $(dist)

SHELL=/bin/bash


project_root ?= $(realpath ..)
project_name = $(notdir $(realpath .))
project_version ?= 0.0.1
project_repo ?= $(project_root)/repo

dist = $(project_name).$(project_version).dist

.DEFAULT_GOAL := install

.PHONY: depend
depend:
	touch makefile.d

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
	echo "Build 3"
	echo "Build 3" > $(dist)

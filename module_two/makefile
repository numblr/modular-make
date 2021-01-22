SHELL=/bin/bash

project_root ?= $(realpath ..)
project_name = $(notdir $(realpath .))
project_version ?= 0.0.1
project_repo ?= $(project_root)/repo

dist = $(project_name).$(project_version).dist

dependencies = $(addprefix $(project_root)/, \
		module_one \
		module_three)

include $(project_root)/makefile.base

dist:
	echo "Build 2"
	echo "Build 2" > $(dist)
	cat $(project_repo)/module_one.$(project_version).dist >> $(dist)
	cat $(project_repo)/module_three.$(project_version).dist >> $(dist)

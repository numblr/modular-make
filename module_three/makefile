SHELL=/bin/bash

project_root ?= $(realpath ..)
project_name = $(notdir $(realpath .))
project_version ?= 0.0.1
project_repo ?= $(project_root)/repo

dist = $(project_name).$(project_version).dist

include $(project_root)/makefile.base

dist:
	echo "Build 3"
	echo "Build 3" > $(dist)

project_name=comp_three
project_version=0.0.1-dev

project_root?=..
proj=.

SHELL=/bin/bash
.DEFAULT_GOAL := build

.PHONY: depend
depend:
	echo ${project_root}/$(project_name): $(dep) > makefile.d

.PHONY: clean
clean:
	rm -rf ${proj}/dist
	rm -rf ${proj}/makefile.d

.PHONY: build
build: ${proj}/dist

${proj}/dist:
		echo "Build 3"
		echo "Build 3" > ${proj}/dist

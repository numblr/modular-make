project_name=comp_one
project_version=0.0.1-dev

project_root?=..
proj=.

dependencies = ${project_root}/comp_three

SHELL=/bin/bash
.DEFAULT_GOAL := build

.PHONY: depend
depend:
	echo ${project_root}/$(project_name): $(dependencies) > makefile.d

.PHONY: clean
clean:
	rm -rf ${proj}/dist
	rm -rf ${proj}/makefile.d

.PHONY: build
build: ${proj}/dist

${proj}/dist:
		echo "Build 1"
		echo "Build 1" > ${proj}/dist
		cat ${project_root}/comp_three/dist >> ${proj}/dist

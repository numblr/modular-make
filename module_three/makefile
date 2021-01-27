SHELL=/bin/bash

project_root ?= $(realpath ..)
project_name = $(notdir $(realpath .))
project_version = $(shell cat version.txt)
project_repo ?= $(project_root)/repo

artifact = $(project_name).$(project_version)

include $(project_root)/makefile.base

clean:
	$(info Clean $(project_name))
	@rm -rf $(artifact)
	@rm -rf makefile.d

build:
	$(info Build $(project_name): $(project_version))
	@cat source.txt | sed "s/%b/$(project_name)/g" | sed "s/%v/$(project_version)/g" > $(artifact)

test:
	$(info Test $(project_name))
	@if ! grep -Fxq "Build $(project_name): $(project_version)" $(artifact); then \
		echo "Passed test for $(project_name)"; \
	else \
		echo "Failed test for $(project_name)"; \
	fi

dist:
	$(info Distribute $(project_name))
	@rm -rf $(project_repo)/$(project_name).*.dist
	@cp $(artifact) $(project_repo)/$(artifact).dist

SHELL=/bin/bash

export project_root=$(realpath ..)
project_name = $(notdir $(realpath .))
project_version=0.0.1
components = $(addprefix ${project_root}/, \
		module_one \
		module_two \
		module_three)
dependencies = $(addsuffix /makefile.d, $(components))


target = build
.DEFAULT_GOAL := build

.PHONY: clean
clean:
	$(MAKE) target=clean

.PHONY: install
install:
	$(MAKE) target=install

.PHONY: build
build: $(components)

.PHONY: $(components)
$(components):
	$(MAKE) --directory=$@ $(target)

.PHONY: depend
depend: $(dependencies)

$(dependencies):
	$(MAKE) --directory=$(dir $@) depend

include $(dependencies)

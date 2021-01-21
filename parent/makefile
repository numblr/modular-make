project_name=parent
project_version=0.0.1-dev

project_root=..

components = $(addprefix ${project_root}/, \
		comp_one \
		comp_two \
		comp_three)
dependencies = $(addsuffix /makefile.d, $(components))


target = build

SHELL=/bin/bash
.DEFAULT_GOAL := build


.PHONY: clean
clean:
	$(MAKE) target=clean

.PHONY: depend
depend: $(dependencies)

$(dependencies):
	$(MAKE) --directory=$(dir $@) depend

.PHONY: build
build: $(components)

.PHONY: $(components)
$(components):
	$(MAKE) --directory=$@ $(target)

include $(dependencies)

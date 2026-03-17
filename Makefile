.DEFAULT_GOAL := install

submodules:
	git submodule update --init

update: submodules

install: submodules


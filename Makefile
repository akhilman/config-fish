.DEFAULT_GOAL := install

submodules:
	git submodule update --init

colorscheme:
	fish colorscheme.fish

update: submodules colorscheme

install: submodules colorscheme


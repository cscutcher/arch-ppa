.PHONY: \
	all \
	really-clean \
	setup


REPO = cscutcher

all:

really-clean:

setup: chroot


chroot:
	./arch-ppa setup

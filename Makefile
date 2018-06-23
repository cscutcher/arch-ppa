.PHONY: \
	all \
	clean \
	really-clean \
	setup


REPO = cscutcher

all: build

clean:
	./arch-ppa clean ${REPO}

really-clean: clean
	./arch-ppa delete_chroot

setup: chroot

build: chroot
	./arch-ppa build ${REPO}

chroot:
	./arch-ppa setup

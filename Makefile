.PHONY: all build install doc clean sdist

all: build

dist/setup-config: GF.cabal
	chmod u+x next-lib/src/mkPresent
	chmod u+x next-lib/src/mkMinimal
	runghc Setup.hs configure

build: dist/setup-config
	runghc Setup.hs build

install:
	runghc Setup.hs install

doc:
	runghc Setup.hs haddock

clean:
	runghc Setup.hs clean

sdist:
	runghc Setup.hs sdist
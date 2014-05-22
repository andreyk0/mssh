
build:
	cabal build

clean:
	cabal clean

init:
	cabal sandbox init
	cabal install --dependencies-only

SOURCES = src/prelude.smt2.md src/lemmas.k.md src/storage.k.md src/specs.md

specs: dapp
	klab build

dapp:
	# git submodule sync --recursive
	# git submodule update --init --recursive
	cd yulp && SOLC_FLAGS=--optimize dapp --use solc:0.6.7 build && cd ../

.PHONY: clean
clean:
	cd yulp && dapp clean
	rm -rf out/

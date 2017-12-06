.PHONY: docs

get-deps:
	sudo apt-get install stow

install:
	bash bootstrap.sh

docs:
	cd ./docs && make html

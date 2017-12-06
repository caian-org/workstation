.PHONY: docs

install:
	bash bootstrap.sh

docs:
	cd ./docs && make html

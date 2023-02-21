.DEFAULT_TARGET := install

PIP_BIN := ${CURDIR}/.venv/bin

install: clean
	@poetry install
	@[ -L "../grip" ]   || ln -s $(PIP_BIN)/grip ../
	@[ -L "../invoke" ] || ln -s $(PIP_BIN)/invoke ../
	@[ -L "../gitlab" ] || ln -s $(PIP_BIN)/gitlab ../

clean:
	@[ -L "../grip" ]   && unlink ../grip       || true
	@[ -L "../invoke" ] && unlink ../invoke     || true
	@[ -L "../gitlab" ] && unlink ../gitlab     || true

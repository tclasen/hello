APP = hello

BINDIR = src
BIN := ${BINDIR}/${APP}.py

.PHONY: all
all: run

.PHONY: build
build:

.PHONY: run
run: ${BIN}
	@python3 ${BIN}

.PHONY: clean
clean:
	rm -rf **/__pycache__/
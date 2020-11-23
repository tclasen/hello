APP = hello

SRCDIR = src
SRC := ${SRCDIR}/${APP}.c

BINDIR = dist
BIN := ${BINDIR}/${APP}.bin

.PHONY: all
all: run

.PHONY: build
build: ${BIN}

${BIN}: ${SRC}
	mkdir -p ${BINDIR}
	gcc ${SRC} -o ${BIN}

.PHONY: run
run: ${BIN}
	@./${BIN}

.PHONY: clean
clean:
	rm -rf ${OBJDIR} ${BINDIR}

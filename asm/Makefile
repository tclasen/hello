APP = hello

SRCDIR = src
SRC := ${SRCDIR}/${APP}.asm

OBJDIR = build
OBJ := ${OBJDIR}/${APP}.o

BINDIR = dist
BIN := ${BINDIR}/${APP}.bin

.PHONY: all
all: run

.PHONY: build
build: ${BIN}

${OBJ}: ${SRC}
	mkdir -p ${OBJDIR}
	nasm -felf64 ${SRC} -o ${OBJ}

${BIN}: ${OBJ}
	mkdir -p ${BINDIR}
	ld ${OBJ} -arch x86_64 -o ${BIN}

.PHONY: run
run: ${BIN}
	@./${BIN}

.PHONY: clean
clean:
	rm -rf ${OBJDIR} ${BINDIR}

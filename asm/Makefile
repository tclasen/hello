APP = hello



TYPE = asm
NAMESPACE = ${USER}
DOCKERNAME := ${NAMESPACE}/${APP}:${TYPE}
DOCKERFILE = deploy/Dockerfile

SRCDIR = src
SRC := ${SRCDIR}/${APP}.asm

OBJDIR = build
OBJ := ${OBJDIR}/${APP}.o

BINDIR = dist
BIN := ${BINDIR}/${APP}.bin



.PHONY: all
all: docker-run

.PHONY: build
build: ${BIN}

${OBJ}: ${SRC}
	mkdir -p ${OBJDIR}
	nasm -felf64 ${SRC} -o ${OBJ}

${BIN}: ${OBJ}
	mkdir -p ${BINDIR}
	ld ${OBJ} -arch x86_64 -o ${BIN}

.PHONY: docker-build
docker-build: ${DOCKERFILE} ${SRC}
	docker build -f ${DOCKERFILE} . -t ${DOCKERNAME} 1>/dev/null

.PHONY: docker-run
docker-run: docker-build
	docker run --rm -it ${DOCKERNAME}

.PHONY: clean
clean:
	rm -rf ${OBJDIR} ${BINDIR}

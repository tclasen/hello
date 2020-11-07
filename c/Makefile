APP = hello



TYPE = c
NAMESPACE = ${USER}
DOCKERNAME := ${NAMESPACE}/${APP}:${TYPE}
DOCKERFILE = deploy/Dockerfile

SRCDIR = src
SRC := ${SRCDIR}/${APP}.c

BINDIR = dist
BIN := ${BINDIR}/${APP}.bin



.PHONY: all
all: docker-run

.PHONY: build
build: ${BIN}

${BIN}: ${SRC}
	mkdir -p ${BINDIR}
	gcc ${SRC} -o ${BIN}

.PHONY: docker-build
docker-build: ${DOCKERFILE} ${SRC}
	docker build -f ${DOCKERFILE} . -t ${DOCKERNAME} 1>/dev/null

.PHONY: docker-run
docker-run: docker-build
	docker run --rm -it ${DOCKERNAME}

.PHONY: clean
clean:
	rm -rf ${OBJDIR} ${BINDIR}

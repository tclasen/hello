APP = hello



TYPE = python
NAMESPACE = ${USER}
DOCKERNAME := ${NAMESPACE}/${APP}:${TYPE}
DOCKERFILE = deploy/Dockerfile

BINDIR = src
BIN := ${BINDIR}/${APP}.py



.PHONY: all
all: docker-run

.PHONY: build
build: ${BIN}

.PHONY: docker-build
docker-build: ${DOCKERFILE} ${SRC}
	docker build -f ${DOCKERFILE} . -t ${DOCKERNAME} 1>/dev/null

.PHONY: docker-run
docker-run: docker-build
	docker run --rm -it ${DOCKERNAME}

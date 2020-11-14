REPO=renanqts
IMAGENAME=pdns
PDNS_VERSION=4.2.3-r0

ifndef TAG
	TAG ?= $(shell git describe --tags --abbrev=0)
endif

.PHONY: help clean build push all

help:
	@echo "Makefile arguments:"
	@echo ""
	@echo "TAG - Container tag"
	@echo "PDNS_VERSION - PowerDNS version"
	@echo ""
	@echo "Makefile commands:"
	@echo "build"
	@echo "push"
	@echo "all"

.DEFAULT_GOAL := build

build:
	@docker build --pull --build-arg PDNS_VERSION=${PDNS_VERSION} -t ${REPO}/${IMAGENAME}:${TAG} .

push:
	@docker push ${REPO}/${IMAGENAME}:${TAG}

all: build push
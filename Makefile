IMG ?= quay.io/ecosystem-appeng/dbaas-e2e-test-harness:latest

DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OUT_FILE := "$(DIR)dbaas-e2e-test-harness"

build:
	CGO_ENABLED=0 go test -v -c

release: build docker-build docker-push

docker-build:
	docker build -t ${IMG} .

docker-push:
	docker push ${IMG}

install-tools:
	go install golang.org/x/tools/cmd/goimports@latest
	go install github.com/mgechev/revive@latest

fmt: install-tools
	goimports -w .

lint: install-tools
	goimports -d .
	revive -config $(DIR)config.toml ./...

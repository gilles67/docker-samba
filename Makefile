GITPACK_VERSION := $(shell git rev-list --full-history --all --abbrev-commit | head -1)
all:
	docker build -t docker-samba/share:latest -t docker-samba/share:$(GITPACK_VERSION) ./share
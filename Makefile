GITPACK_VERSION := $(shell git rev-list --full-history --all --abbrev-commit | head -1)
all:
	docker pull debian
	docker build -t gilles67/h42-samba:latest -t gilles67/h42-samba:$(GITPACK_VERSION) ./share
	docker push gilles67/h42-samba:latest 
	docker push gilles67/h42-samba:$(GITPACK_VERSION)
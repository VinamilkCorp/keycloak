

all: build

help:
	# General commands:
	# make all => build push
	# make prepare - prepare environment variables for given TARGET (arm32/arm64)
	# make info - show information about the current version
	# make version - return the platform and version machine friendly
	#
	# Commands
	# make build - build the AuthService image
	# make push - push the image to Docker Hub
	# make push-manifest - push manifest files to Docker hub using TAGLIST variable for choosing the docker images by tag
	# make taglist - returns the taglist
	#

prepare: FORCE

ifeq ($(REPO), dockerhub)
    export MAINTAINER:=vinamilkcorp
else ifeq ($(REPO), acr)
    export MAINTAINER:=vnmcontainerregistry.azurecr.io
else
	$(error unknown Repo >$(REPO)<)
endif

export CE_TAG:=$(shell ./bin/version.sh)
export IMAGE_NAME:=keycloak
export IMAGE:=$(MAINTAINER)/$(IMAGE_NAME)

info: prepare
	@echo "---"
	@echo Version: $(CE_TAG)
	@echo Image: $(IMAGE):$(TARGET)
	@echo ""
	@echo Brought to you by lttrung1
	@echo "---"


build: info
	@./bin/build.sh

push: build
	@./bin/push.sh

version:
	@echo $(TARGET)-$(CE_TAG)

FORCE:
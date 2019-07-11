TAG  ?= $(shell git describe --tags --abbrev=0 HEAD)

build:
	docker build . -t quay.io/innervate/aws-ssm-agent:${TAG}

push:
	docker push quay.io/innervate/aws-ssm-agent:${TAG}

run:
	docker run --rm -it quay.io/innervate/aws-ssm-agent:${TAG}

deploy:
	hack/deploy

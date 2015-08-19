build:
	docker build --no-cache --rm -t julienbreux/phpspec master
	docker build --no-cache --rm -t julienbreux/phpspec:2.1 2.1
	docker build --no-cache --rm -t julienbreux/phpspec:2.2.1 2.2.1

version:
	docker run -t --rm julienbreux/phpspec --version
	docker run -t --rm julienbreux/phpspec:2.1 --version
	docker run -t --rm julienbreux/phpspec:2.2.1 --version

.PHONY: build

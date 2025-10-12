.PHONY: build
build:
	hugo build --gc --cleanDestinationDir

.PHONY: watch
watch:
	hugo build --gc --cleanDestinationDir --watch

.PHONY: dev
dev:
	hugo server --gc -D

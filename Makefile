.PHONY: build
build:
	hugo build --gc --cleanDestinationDir

.PHONY: watch
watch:
	hugo build --gc --cleanDestinationDir --watch

.PHONY: build
build:
	hugo build --gc --minify --cleanDestinationDir

.PHONY: watch
watch:
	hugo build --gc --minify --cleanDestinationDir --watch
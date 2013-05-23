index.js:
	@curl -o $@ http://builds.emberjs.com.s3.amazonaws.com/ember-data-latest.js

.PHONY: index.js
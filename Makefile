default: lib lib/ember-data.js

lib:
	@mkdir -p $@

lib/ember-data.js:
	@axel -o $@ http://builds.emberjs.com.s3.amazonaws.com/ember-data-latest.min.js

clean:
	@rm -rf lib

.PHONY: clean

component = ./node_modules/component-hooks/node_modules/.bin/component

public: node_modules components lib/index.js lib/ember-data.js
	@$(component) build -n $@ -o $@

node_modules:
	@npm install

components:
	@$(component) install

lib/ember-data.js:
	@axel -o $@ http://builds.emberjs.com.s3.amazonaws.com/ember-data-latest.min.js

example: public
	@xdg-open example/index.html

clean:
	@rm -rf public lib/ember-data.js

.PHONY: clean example

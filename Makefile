# bad practice !
index.js:
	@cd ../../emberjs/data && git pull && bundle && rake dist
	@cp -f ../../emberjs/data/dist/ember-data.min.js $@
	@du -bh $@

.PHONY: index.js
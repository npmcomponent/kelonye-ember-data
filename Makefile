# bad makefile !
index.js:
	@cd ../../emberjs/data && git pull && bundle && bundle exec rake dist
	@cp -f ../../emberjs/data/dist/ember-data.min.js $@
	@du -bh $@

.PHONY: index.js
index.js: data
	@cd $< && git pull && bundle && bundle exec rake dist
	@cp -f $</dist/ember-data.min.js $@
	@du -bh $@

data:
	@git clone https://github.com/emberjs/data.git $@

.PHONY: index.js
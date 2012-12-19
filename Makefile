stylus = node_modules/stylus/bin/stylus
jade = node_modules/jade/bin/jade

css:
	$(stylus) -I node_modules/nib/lib -c -o css _css

watchcss:
	$(stylus) -I node_modules/nib/lib -c -w -o css _css

html:
	$(jade) -O . _jade/*.jade

watchhtml:
	$(jade) -w -O . _jade/*.jade

.PHONY: css html

build:
	mkdir -p lib
	rm -rf lib/*
	node_modules/.bin/coffee --compile -m --output lib/ src/

watch:
	node_modules/.bin/coffee --watch --compile --output lib/ src/
	
test:
	node_modules/.bin/mocha

jumpstart:
	curl -u 'meryn' https://api.github.com/user/repos -d '{"name":"render-appcache-manifest", "description":"Renders HTML5 application cache manifest.","private":false}'
	mkdir -p src
	touch src/render-appcache-manifest.coffee
	mkdir -p test
	touch test/render-appcache-manifest.coffee
	npm install
	git init
	git remote add origin git@github.com:meryn/render-appcache-manifest
	git add .
	git commit -m "jumpstart commit."
	git push -u origin master

.PHONY: test
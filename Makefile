run:
	bin/foreman start

release:
	git subtree push --prefix _site origin gh-pages

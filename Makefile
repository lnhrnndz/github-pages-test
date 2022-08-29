deploy: book
	@echo "=====> deploying book to github"
	rm -rf gh-pages/*
	cp -rp book/* gh-pages/
	cd gh-pages && \
		git add -A && \
		git commit -m "deployed on $(shell date) by ${USER}" && \
		git push origin gh-pages

book:
	mdbook build

clean:
	rm -rf book

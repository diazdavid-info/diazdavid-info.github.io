.PHONY: build dev

current-dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))


build:
	docker run --rm -v $(current-dir):/srv/jekyll -v $(current-dir)vendor/bundle:/usr/local/bundle -w /srv/jekyll -p 4000:4000 -it jekyll/builder jekyll build

dev:
	docker run --rm -v $(current-dir):/srv/jekyll -v $(current-dir)vendor/bundle:/usr/local/bundle -w /srv/jekyll -p 4000:4000 -it jekyll/builder jekyll serve

shell:
	docker run --rm -v $(current-dir):/srv/jekyll -v $(current-dir)vendor/bundle:/usr/local/bundle -w /srv/jekyll -p 4000:4000 -it jekyll/builder bash

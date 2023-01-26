# Define variables
Publish=hugo
SHELLCHECK=shellcheck

build:
	$(Publish)

clean:
	rm -r dist/*

post:
	$(Publish) new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

lint:
	markdownlint DEPLOY.md
	$(SHELLCHECK) setup.sh >/dev/null 2>&1 || echo "Lint Failed"

markdownlint:
	markdownlint README.md
	markdownlint DEPLOY.md

integration-tests:
	hugo
	ls dist/

unit-tests:
	make POST_TITLE='TEST' POST_NAME='this-is-a-test' post
	make build
	make clean

validate:
	pwd

package:
	make build
	zip awesome-website.zip dist/	

help:
	cat Makefile | grep '##' | tr -d '##' | head -n -1
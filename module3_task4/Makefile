build: ### Build
	hugo

clean: ### Clean
	rm -r ./dist

post: ## Post
	$(Publish) new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

lint: ### Lint
	markdownlint DEPLOY.md
	$(SHELLCHECK) setup.sh >/dev/null 2>&1 || echo "Lint Failed"

markdownlint: ### Markdown
	markdownlint README.md && markdownlint DEPLOY.md

integration-tests: ## Integration tests
	hugo
	ls dist/

unit-tests: ## Unit tests
	make POST_TITLE='TEST' POST_NAME='this-is-a-test' post
	make build
	make clean

validate: ## validate	
	pwd

package: ## package	
	make build
	zip awesome-website.zip dist/	

help: ## help
	README.md
build: ## Generate the website from the markdown and config file in dist
	hugo

clean: ## Clean up the content in dist
	rm -rf dist/*

post: ##  Create a new blog post whose filename and title come from the environment variables
	hugo new posts/$(POST_NAME).md
	sed -i '2s/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md >/dev/null 2>&1

.SILENT:
help: ## Displays helpful information for Makefile commands
	cat Makefile | grep '##' | tr -d '##'
build: ## Generate the website from the markdown and config file in dist
	hugo

clean: ## Clean up the content in dist
	rm -rf dist/*

post:
	hugo new posts/$(POST_NAME).md
	sed -i '2s/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md >/dev/null 2>&1
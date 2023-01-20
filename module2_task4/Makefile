clean: ## clean: Delete the binary and the log file
	rm -rf dist
build: ## build: compile source code of application to a binary
	make check && hugo

post: ## Create a new blog post
	hugo new ./content/posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/g' ./content/posts/$(POST_NAME).md

check: ## Check
	markdownlint ./content/posts/*
	markdown-link-check ./content/posts/*

validate: ## Validate
	make build
	./w3c_validator.py ./dist/index.html || true
help: ##shows commands usage information
	fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
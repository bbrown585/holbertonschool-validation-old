# Help on commands
help: ## Show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

# Build the website in the dist directory
build: ## Build the website in the dist directory
	make check && hugo
# Clean up the dist directory
clean: ## Clean up the dist directory
	rm -rf dist/*

# Create a new blog post
post: ## Create a new blog post
	hugo new ./content/posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/g' ./content/posts/$(POST_NAME).md

# Check
check: ## Check
	markdownlint ./content/posts/*
	markdown-link-check ./content/posts/*


# Validate
validate: ## Validate
	make build
	./W3C-Validator/w3c_validator.py ./dist/index.html || true

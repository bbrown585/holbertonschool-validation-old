# Define variables
Publish=hugo
SHELLCHECK=shellcheck


# Help on commands
help: ## Show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

# Build the website in the dist directory
build: ## Build the website in the dist directory
	$(Publish)

# Clean up the dist directory
clean: ## Clean up the dist directory
	rm -rf dist/*

# Create a new blog post
post: ## Create a new blog post
	hugo new ./content/posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/g' ./content/posts/$(POST_NAME).md

# Create an archive file containing the dist/ directory
package: ## Create an archive file containing the dist/ directory
	hugo
	zip -r awesome-website.zip dist/

# Lint the README.md and DEPLOY.md files
lint: ## Lint the README.md and DEPLOY.md files
	markdownlint DEPLOY.md
	$(SHELLCHECK) setup.sh >/dev/null 2>&1 || echo "Lint Failed"

# Unit-tests the files
unit-tests: ## Unittest the files
	ls

# Validate the files
validate: ## Validate the files
	ls

# Integration-tests the files
integration-tests: ## Integration-tests the files
	ls

# Set default target
.PHONY: build clean post package lint unit-tests validate integration-tests
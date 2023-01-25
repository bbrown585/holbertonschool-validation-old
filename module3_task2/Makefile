build: ## Compiles the source code
	hugo

clean: ## Delete
	make stop
	rm -r awesome-api 2>&1 &
	rm -r awesome.log 2>&1 &
	rm -r coverage-integrations.out
	rm -r coverage-units.out
post: ## Post the website
	hugo new posts/$(POST_NAME).md
	sed -i '2s/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md >/dev/null 2>&1

lint: ## make lint on the files
	markdownlint README.md && markdownlint DEPLOY.md

integration-tests: ## make unit tests on the files
	go test -v -run ^main_integration_test.go -coverprofile=coverage-integrations.out || echo $1

unit-tests: ## make unit tests on the files
	go test -v -short -coverprofile=coverage-units.out || echo $1

validate: ## make unit tests on the files
	pwd
package: ## Create an archive file containing the dist/ directory
	hugo
	zip -r awesome-website.zip dist/

run: ## make unit tests on the files

.SILENT:
help: ## implemente and print a list of all the goals
	fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
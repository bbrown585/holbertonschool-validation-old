# Define variables
Publish=hugo
SHELLCHECK=shellcheck

build: ## Builds a new website
	$(Publish)

run: ## Runs the application in background
	./awesome-api >./awesome.log 2>&1 &

stop: ## Stops the application
	@kill $(shell pgrep awesome-api) 2>&1 &

clean: ## Delete
	make stop
	-rm -r awesome-api 2>&1 &
	-rm -r awesome.log 2>&1 &
	-rm -r coverage-integrations.out
	-rm -r coverage-units.out

test: ## Tests the application
	make unit-tests
	make unit-tests

lint: ## make lint on the files
	$(SHELLCHECK) setup.sh >/dev/null 2>&1 || echo "Lint Failed"

unit-tests: ## make unit tests on the files
	go test -v -short -coverprofile=coverage-units.out || echo $1

integration-tests: ## make unit tests on the files
	go test -v -run ^main_integration_test.go -coverprofile=coverage-integrations.out || echo $1

validate: ## make unit tests on the files
	pwd
run: ## make unit tests on the files

post: ## Post the website
	hugo new posts/$(POST_NAME).md
	sed -i '2s/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md >/dev/null 2>&1
.SILENT:
help: ## implemente and print a list of all the goals
	fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

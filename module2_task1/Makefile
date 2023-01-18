lint: ## Check with golint
	golangci-lint run
 
help: ## Show help command
	sed -ne '/@sed/!s/## //p' Makefile

build:  ## Create Website
	golangci-lint run
	go build

run: ## Run the application
	./awesome-api >./awesome.log 2>&1 &

stop: ## Stop the application
	pkill awesome-api || true

test: ## Test the application
	curl http://localhost:9999
	curl http://localhost:9999/health

clean:  ## Delete content of dist folder
	pkill awesome-api || true
	rm -rf ./awesome-api && rm -rf awesome.log

## Default
.PHONY: build clean run stop test lint
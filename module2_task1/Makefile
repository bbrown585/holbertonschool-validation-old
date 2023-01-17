lint: ## lint the file
    if [ $? -ne 0 ]; then echo "Linting failed"; exit 1; else echo "Linting succeeded"; fi
    golangci-lint run

build: ## compile source code and build site
	make lint
	go mod init github.com/bbrown585/awesome-api
	make build

run: ## Run the app in the background and write the logs
	./awesome-api >./awesome.log 2>&1 &

stop: ## stop the app
	pgrep awesome-api | xargs kill

clean: ## delete the binary awesome-api and stop all processes
	rm -rf ./awesome-api | rm -rf awesome.log
	pgrep awesome-api | xargs kill

test: ## test for functionality
	curl http://localhost:9999
	curl http://localhost:9999/health

help: ## help: help targets 
	cat Makefile | grep '##' | tr -d '##' | head -n -1
lint: ## lint the file
	golangci-lint run

build: ## compile source code and build site
	make lint >/dev/null 2>&1 && go build || echo "ERROR"

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

Silent: ## test for functionality
help: ## Print a list of all the goals with a sentence.
	sed -n '1p;4p;7p;10p;13p;17p;22p' Makefile | grep "##" | tr -d "##"

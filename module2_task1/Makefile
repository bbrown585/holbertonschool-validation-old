help: ## Print a list of all the goals with a sentence.
	sed -n '1p;3p;6p;9p;12p;15p;19p' Makefile | grep "##" | tr -d "##"
lint: ## lint the file
	golangci-lint run

build: ## compile source code and build site
	make lint >/dev/null 2>&1 && go build || exit 40

run: ## Run the app in the background and write the logs
	./awesome-api >./awesome.log 2>&1 &

stop: ## stop the app
	pgrep awesome-api | xargs kill

clean: ## delete the binary awesome-api and stop all processes
	rm -rf ./awesome-api | rm -rf awesome.log
	pgrep awesome-api | xargs kill

test: ## test for functionality
	curl http://localhost:9999 &
	curl http://localhost:9999/health

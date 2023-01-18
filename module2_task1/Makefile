lint: ## lint the file
	make lint >/dev/null 2>&1 && go build || echo "ERROR"
	golangci-lint run

build: ## compile source code and build site
	make lint >/dev/null 2>&1 && go mod init github.com/bbrown585/awesome-api
	go build

run: ## Run the app in the background and write the logs
	./awesome-api >./awesome.log 2>&1 &

stop: ## stop the app
	@kill "$(shell pgrep awesome-api)" 2>/dev/null &

clean: ## delete the binary awesome-api and stop all processes
	make stop
	rm -rf awesome-api
	rm awesome.log >/dev/null 2>&1 &

test: ## test for functionality
	curl http://localhost:9999 
	curl http://localhost:9999/health

help: ## Print a list of all the goals with a sentence.
	sed -n '1p;5p;9p;12p;15p;20p;24p' Makefile | grep "##" | tr -d "##"
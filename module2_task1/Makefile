Silent: ## test for functionality
help: ## Print a list of all the goals with a sentence.
	sed -n '2p;5p;9p;12p;15p;18p;22p' Makefile | grep "##" | tr -d "##"

lint: ## lint th
    golangci-lint run
    if [ $? -ne 0 ]; then echo "Linting failed"; exit 1; else echo "Linting succeeded"; fi

build: ## compile source code and build site
	go build -o myapp main.go

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

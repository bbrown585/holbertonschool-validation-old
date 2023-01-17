build: ## compile source code and build site
	golangci-lint run
	go build

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

lint: ## lint the main.go for errors
	golangci-lint run

Silent: ## test for functionality
help: ## Print a list of all the goals with a sentence.
	sed -n '1p;5p;8p;11p;15p;18p;19p;23p' Makefile | grep "##" | tr -d "##"
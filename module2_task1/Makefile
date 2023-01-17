Silent: ## test for functionality
help: ## Print a list of all the goals with a sentence.
	sed -n '1p;5p;8p;11p;14p;17p;21p' Makefile | grep "##" | tr -d "##"

lint:  ## lint the file
	golangci-lint run

build:  ## Compile source code and build site
	make lint >/dev/null 2>&1 && go build || exit -1

run: ## Run the app in the background and write the logs
	./awesome-api >./awesome.log 2>&1 &

stop: ## stop the app 
	kill "$(shell pgrep awesome-api)" 2>/dev/null &

clean:  ## delete the binary awesome-api and stop all processes
	rm -rf ./awesome-api | rm -rf awesome.log
	pgrep awesome-api | xargs kill

test:  ## test for functionality
	curl http://localhost:9999
	curl http://localhost:9999/health

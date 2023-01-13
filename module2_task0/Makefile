build: init compile

init: ## intialize the project repo
    go mod init github.com/bbrown585/awesome-api

compile: ## compile source code to a binary
    go build -o awesome-api main.go

run: ## Run the app in the background and write the logs
	./awesome-api >./awesome.log 2>&1 &

stop: ## stop the app
	kill `pgrep -f "awesome-api"`

clean: ## delete the binary awesome-api
	rm -f awesome-api awesome.log

help: ##  print a list of all the goals with a sentence each


test: ## test for functionality
	curl http://localhost:9999
	curl http://localhost:9999/health

build: ## compile source code to a binary
	mkdir awesome-api
	cd awesome-api
	go mod init github.com/bbrown585/awesome-api
	go build -o awesome-api main.go

run: ## Run the app in the background and write the logs
	nohup./awesome-api >./awesome.log 2>&1 &

stop: ## stop the app
	kill `pgrep -f "awesome-api"`

clean: ## delete the binary awesome-api
	rm -r awesome-api awesome.log

help: ##  print a list of all the goals with a sentence each


test: ## test for functionality
	curl http://localhost:9999
	curl http://localhost:9999/health

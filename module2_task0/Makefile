.SILENT:
help: ## Print a list of all the goals with a sentence.
	sed -n '2p;5p;11p;14p;17p;20p' Makefile | grep "##" | tr -d "##"

build: ## compile source code to a binary
	go mod init github.com/bbrown585/awesome-api
	go build

run: ## Run the app in the background and write the logs
	./awesome-api >./awesome.log 2>&1 &

stop: ## stop the app
	pgrep -f "awesome-api" | xargs -r kill

clean: ## delete the binary awesome-api
	rm -rf awesome-api awesome.log

test: ## test for functionality
	curl http://localhost:9999
	curl http://localhost:9999/health

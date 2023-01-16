build: ## compile source code to a binary
	go mod init github.com/bbrown585/awesome-api
	go build

run: ## Run the app in the background and write the logs
	./awesome-api >./awesome.log 2>&1 &

stop: ## stop the app
	pgrep awesome-api | xargs kill

clean: ## delete the binary awesome-api
	rm -r awesome-api awesome.log

test: ## test for functionality
	curl http://localhost:9999
	curl http://localhost:9999/health
Silent: ## test for functionality
help: ## Print a list of all the goals with a sentence.
	sed -n '1p;5p;8p;11p;15p;18p;19p' Makefile | grep "##" | tr -d "##"
build: ## build: compile source code of application to a binary
	@make lint && go build || exit -1

run: ## run: Run the app in background by executing the binary
	./awesome-api >./awesome.log 2>&1 &

stop: ## stop: stop the application using shell command "kill"
	@kill "$(shell pgrep awesome-api)" 2>/dev/null &

clean: ## clean: Delete the binary and the log file
	make stop
	rm -rf awesome-api
	rm awesome.log >/dev/null 2>&1 &

post: ## Create a new blog post
	hugo new ./content/posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/g' ./content/posts/$(POST_NAME).md

check: ## Check
	markdownlint ./content/posts/*
	markdown-link-check ./content/posts/*

help: ## Print a list of all the goals with a sentence.
	sed -n '1p;3p;5p;8p;11p;14p;19p;23p' Makefile | grep "##" | tr -d "##"
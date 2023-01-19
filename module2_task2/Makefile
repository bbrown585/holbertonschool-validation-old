lint: ## linting the golang code, if failure build shouldn't run
	golangci-lint run
build: ## build: compile source code of application to a binary
	make lint >/dev/null 2>&1 && go mod init github.com/bbrown585/awesome-api
	go build

run: ## run: Run the app in background by executing the binary
	./awesome-api >./awesome.log 2>&1 &

stop: ## stop: stop the application using shell command "kill"
	@kill "$(shell pgrep awesome-api)" 2>/dev/null &

clean: ## clean: Delete the binary and the log file
	make stop
	rm -rf awesome-api
	rm awesome.log >/dev/null 2>&1 &

test: ## test: run tests to ensure it behaves as expected
	curl http://localhost:9999
	curl http://localhost:9999/health

unit-tests: ## unit-tests: execute golang unit test
	go test -v -short -coverprofile=coverage-units.out || echo $1

help: ## Print a list of all the goals with a sentence.
	sed -n '1p;3p;7p;10p;13p;18p;22p;25p' Makefile | grep "##" | tr -d "##"
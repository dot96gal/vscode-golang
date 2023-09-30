.PHONY: lint
lint:
	golangci-lint run ./...

.PHONY: test
test:
	GOEXPERIMENT=loopvar go test -race ./...

.PHONY: dev
dev:
	go run ./...

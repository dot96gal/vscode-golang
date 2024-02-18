.PHONY: lint
lint:
	golangci-lint run ./...

.PHONY: test
test:
	go test -race ./...

.PHONY: dev
dev:
	go run ./...

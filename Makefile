all: go-build go-test build run

modules:
	go mod tidy

go-build: modules
	go build -o bin/parkinglistservice ./cmd/parkinglistservice/.

build:
	docker-compose build

run:
	docker-compose up

go-test:
	go test ./...
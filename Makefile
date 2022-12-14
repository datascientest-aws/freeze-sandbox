.PHONY: build clean deploy

# For build in Linux/Docke:
# env GOOS=linux go build -ldflags="-s -w" -o bin/freeze-sandbox main.go

build:
	export GO111MODULE="on"
	go get -v
	go build -o bin/main main.go
clean:
	rm -rf ./bin
test:
	go test

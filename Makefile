build:
	CGO_ENABLED=0 GOOS=linux go build -o website-controller -a pkg/website-controller.go

image: build
	docker build -t wache/website-controller:v1 .

push: image
	docker push wache/website-controller:v1

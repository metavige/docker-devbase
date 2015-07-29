IMAGE_NAME="metavige/ubuntu-devbase"

build:
	docker build -t ${IMAGE_NAME} .

push:
	docker push ${IMAGE_NAME}
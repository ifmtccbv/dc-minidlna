image_name = carlosrabelo/minidlna:1.0

all: clean build

clean:
	docker rmi -f $(image_name)

build: Dockerfile
	docker build -t $(image_name) .

start:
	docker run -d --net=host -p 8200:8200 -v ~/Videos:/opt $(image_name)

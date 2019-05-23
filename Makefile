PROJECT := minidlna
LATEST  := carlosrabelo/minidlna:latest
CURRENT := carlosrabelo/minidlna:1.0

restart: stop start

start:
	@docker-compose -p $(PROJECT) up -d

stop:
	@docker-compose -p $(PROJECT) down

config:
	@docker-compose config

clean:
	@docker rmi -f $(LATEST)
	@docker rmi -f $(CURRENT)

build: Dockerfile
	@docker build -t $(CURRENT) .
	@docker tag ${CURRENT} ${LATEST}

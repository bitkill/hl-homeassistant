# Controls this home assistant deployment easily

up: # Starts up the project's containers
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	up -d

down: # Stops containers
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	-f docker-compose.deconz.yml \
	down

build: # Builds custom docker images
	docker-compose build

logs: # View docker logs for this project
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	-f docker-compose.deconz.yml \
	logs -f

setup: # Copy necessary files to a successful deployment
	cp .env.example .env

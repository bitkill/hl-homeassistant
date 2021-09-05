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

logs: # View docker logs for this project
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	-f docker-compose.deconz.yml \
	logs -f

setup:
	cp .env.example .env

use-hass-config: # Uses sample home assistant configuration
	cp samples/homeassistant/configuration.yaml data/homeassistant/configuration.yaml

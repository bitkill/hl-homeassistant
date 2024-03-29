# Controls this home assistant deployment easily

LOG_LINES?=300

help: ## Displays help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

up: ## Starts up the project's containers
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	up -d

down: ## Stops containers
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	down

update:
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	pull

upgrade: down update up

build: ## Builds custom docker images
	docker-compose build

logs: ## View docker logs for this project
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	logs --tail=${LOG_LINES} -f

logs-%: ## View docker logs for a single container
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	logs --tail=${LOG_LINES} -f $*

setup: ## Copy the necessary files to a successful deployment, only if they do not exist
	cp -n .env.example .env

remove: ## Removes all the project's containers and images
	docker-compose down --rmi all

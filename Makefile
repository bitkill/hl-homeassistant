# Controls this home assistant deployment easily

up:
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	up -d

down:
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	-f docker-compose.deconz.yml \
	down

logs:
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	-f docker-compose.deconz.yml \
	logs -f


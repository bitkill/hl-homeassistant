


up:
	docker-compose \
	-f docker-compose.yml \
	up -d

down:
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.deconz.yml \
	down

logs:
	docker-compose \
	-f docker-compose.yml \
	-f docker-compose.deconz.yml \
	logs -f


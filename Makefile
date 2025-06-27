up:
	docker-compose up -d --build

down:
	docker-compose down -v

logs:
	docker-compose logs -f

rebuild:
	docker-compose down -v && docker-compose up -d --build
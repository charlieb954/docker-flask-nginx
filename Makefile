up:
	docker compose up -d --force-recreate --build 
down:
	docker compose down
	docker system prune
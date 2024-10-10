default: certs up

up:
	docker compose up -d --force-recreate --build base
	docker compose up -d --force-recreate --build 

down:
	docker compose down
	docker system prune

certs:
	@if [ ! -f nginx/certs/nginx.key ]; then \
		mkdir -p nginx/certs; \
		openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out nginx/certs/nginx.crt -keyout nginx/certs/nginx.key; \
		chmod 400 nginx/certs/nginx.key; \
		echo "SSL certificate generated."; \
	else \
		echo "SSL certificate already exists. Skipping generation."; \
	fi
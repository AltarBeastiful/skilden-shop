deploy:
	scp docker-compose.yml wordpress:~

restart:
	ssh wordpress "sudo docker-compose up -d"

install: deploy restart

logs:
	ssh wordpress "sudo docker-compose logs traefik"

logsf:
	ssh wordpress "sudo docker-compose logs -f traefik"
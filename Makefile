deploy:
	scp docker-compose.yml wordpress:~

restart:
	ssh wordpress "sudo docker-compose up -d"

install: deploy restart
NAME=PulsarStudioPostgres

$(NAME):
	docker compose up --build -d

stop:
	docker compose down

re:	stop $(NAME)

clean:
	docker compose down --volumes && docker

free:
	docker rm 

pure:
	docker system prune

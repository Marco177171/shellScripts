NAME=Postgres_db

$(NAME):
	docker compose up --build -d

stop:
	docker compose down

re:	stop $(NAME)

clean:
	docker compose down --volumes

free:
	docker rm

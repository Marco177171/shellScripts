NAME=Wordpress

$(NAME):
	docker compose up --build

stop:
	docker compose down

re:	stop $(NAME)

clean:
	docker compose down --volumes

free:
	docker rm
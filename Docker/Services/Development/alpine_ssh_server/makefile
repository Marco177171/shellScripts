NAME=SSH_server

$(NAME):
	docker compose up --build -d

stop:
	docker compose down

re:	stop $(NAME)

clean:
	docker compose down --volumes

free:
	docker rm 

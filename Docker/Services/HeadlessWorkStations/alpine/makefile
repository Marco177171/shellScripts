NAME=alpine-ws

$(NAME):
	docker compose up --build -d

stop:
	docker compose down

re:	stop $(NAME)

clean:
	docker compose down --volumes

free: clean
	docker rm $(NAME)

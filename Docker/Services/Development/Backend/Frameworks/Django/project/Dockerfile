FROM alpine:latest

WORKDIR /usr/src/app

RUN apk update && apk upgrade

RUN apk add py3-django

COPY . .

RUN python manage.py makemigrations && python manage.py migrate --run-syncdb

EXPOSE 8000

CMD [ "python", "manage.py", "runserver" ]
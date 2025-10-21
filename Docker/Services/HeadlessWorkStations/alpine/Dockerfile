FROM alpine:latest

RUN apk update && \
apk --no-cache upgrade && \
apk add -y ssh git htop vim cmake gcc zsh bash-completion ufw

# RUN ufw enable && ufw allow ssh
COPY ./.vimrc .

EXPOSE $SSH_PORT

CMD ["sleep", "infinity"]


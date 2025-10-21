FROM debian:trixie

WORKDIR /root
RUN apt update && \
apt upgrade -y && \
apt install -y ssh git htop vim cmake gcc zsh bash-completion ufw && \
apt autoremove

# RUN ufw enable && ufw allow ssh
COPY ./.vimrc .

CMD ["sleep", "infinity"]

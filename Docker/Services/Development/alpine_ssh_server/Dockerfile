FROM alpine:latest

RUN apk add --update openssh git htop vim && \
    rm -rf /tmp/* /var/cache/apk/*

# Generazione delle chiavi host per SSH
RUN ssh-keygen -A

# Creazione della cartella .ssh per root
RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh

# Abilitare root login con SSH (opzionale, per debug)
# RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

EXPOSE 2222

CMD ["/usr/sbin/sshd", "-D"]


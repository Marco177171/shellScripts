# Use the official Alpine image
FROM alpine:latest

# Install OpenSSH server
RUN apk update && apk upgrade
RUN apk add --no-cache openssh nginx git

# Start SSH daemon in the foreground
CMD ["/usr/sbin/sshd", "-D"]

# Expose SSH port
EXPOSE 22
# From the Kali linux base image
FROM debian:latest

# Update and apt install programs
RUN apt-get update && apt-get full-upgrade -y && apt-get install -y curl git && apt-get autoremove -y

# Create known_hosts for git cloning
RUN mkdir -p /root/.ssh && touch /root/.ssh/known_hosts
# Add host keys
RUN ssh-keyscan github.com >> /root/.ssh/known_hosts

# Clone git repos
RUN curl -sSL https://raw.githubusercontent.com/nettitude/PoshC2_Python/docker/Install.sh | bash

# Set entrypoint and working directory
WORKDIR /opt/PoshC2_Python
ENV TERM="xterm"

# User config
RUN apt-get -y install vim
ENV EDITOR="vim"

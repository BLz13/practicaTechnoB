FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install MySQL client for connecting to MariaDB
RUN apt-get update && apt-get install -y \
    mysql-client \
    && rm -rf /var/lib/apt/lists/*

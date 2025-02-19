FROM ubuntu:20.04

# Set environment variable to suppress interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    python3 \
    python3-pip \
    apt-transport-https \
    software-properties-common \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install awscli
RUN pip3 install awscli

# Install Loki
RUN curl -Lo /tmp/loki-linux-amd64.zip https://github.com/grafana/loki/releases/download/v2.2.1/loki-linux-amd64.zip \
    && unzip /tmp/loki-linux-amd64.zip -d /usr/local/bin \
    && chmod +x /usr/local/bin/loki-linux-amd64 \
    && rm /tmp/loki-linux-amd64.zip

# Copy the configuration file
COPY loki.yaml /etc/loki/loki.yaml

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
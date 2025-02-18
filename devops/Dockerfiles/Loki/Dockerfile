FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    python3 \
    python3-pip \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install awscli
RUN pip3 install awscli

# Install Loki
RUN curl -Lo /tmp/loki-linux-amd64.zip https://github.com/grafana/loki/releases/download/v2.2.1/loki-linux-amd64.zip \
    && unzip /tmp/loki-linux-amd64.zip -d /usr/local/bin \
    && chmod +x /usr/local/bin/loki-linux-amd64 \
    && rm /tmp/loki-linux-amd64.zip

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
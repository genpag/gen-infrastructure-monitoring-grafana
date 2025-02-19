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
    && rm -rf /var/lib/apt/lists/*

# Install awscli
RUN pip3 install awscli

# Install Prometheus
RUN curl -Lo /tmp/prometheus.tar.gz https://github.com/prometheus/prometheus/releases/download/v2.26.0/prometheus-2.26.0.linux-amd64.tar.gz \
    && tar -xzf /tmp/prometheus.tar.gz -C /usr/local/bin --strip-components=1 prometheus-2.26.0.linux-amd64/prometheus \
    && chmod +x /usr/local/bin/prometheus \
    && rm /tmp/prometheus.tar.gz

# Copy the configuration file
COPY prometheus.yaml /etc/prometheus/prometheus.yml

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
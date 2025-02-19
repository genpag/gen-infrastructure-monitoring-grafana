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
    netcat \
    lsof \
    && rm -rf /var/lib/apt/lists/*

# Install awscli
RUN pip3 install awscli

# Install Tempo
RUN curl -Lo /tmp/tempo_2.2.0_linux_amd64.deb https://github.com/grafana/tempo/releases/download/v2.2.0/tempo_2.2.0_linux_amd64.deb \
    && echo "e81cb4ae47e1d8069efaad400df15547e809b849cbb18932e23ac3082995535b /tmp/tempo_2.2.0_linux_amd64.deb" | sha256sum -c - \
    && dpkg -i /tmp/tempo_2.2.0_linux_amd64.deb \
    && rm /tmp/tempo_2.2.0_linux_amd64.deb

# Copy the configuration files
COPY tempo.yaml /etc/tempo/tempo.yaml

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Expose the necessary ports
EXPOSE 3100 3200 9095

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
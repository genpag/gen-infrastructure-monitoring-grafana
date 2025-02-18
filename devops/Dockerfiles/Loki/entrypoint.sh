#!/bin/bash

# Fetch the configuration file from S3
aws s3 cp s3://$S3_BUCKET/$LOKI_YAML_PATH /etc/loki/loki.yaml

# Start Loki
/usr/local/bin/loki-linux-amd64 --config.file=/etc/loki/loki.yaml
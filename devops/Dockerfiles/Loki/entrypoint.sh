#!/bin/sh

# Fetch the configuration file from S3
aws s3 cp s3://$S3_BUCKET/$LOKI_YAML_PATH /etc/loki/config.yaml

# Start Loki
/run.sh
#!/bin/sh

# Fetch the configuration file from S3
aws s3 cp s3://$S3_BUCKET/$PROMETHEUS_YAML_PATH /etc/prometheus/prometheus.yaml

# Start Prometheus
prometheus --config.file=/etc/prometheus/prometheus.yaml
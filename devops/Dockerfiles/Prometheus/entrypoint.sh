#!/bin/bash

# Fetch the configuration file from S3
aws s3 cp s3://$S3_BUCKET/$PROMETHEUS_YAML_PATH /etc/prometheus/prometheus.yml

# Start Prometheus
/usr/local/bin/prometheus --config.file=/etc/prometheus/prometheus.yml
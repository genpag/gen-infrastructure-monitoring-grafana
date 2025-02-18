#!/bin/sh

# Fetch the configuration file from S3
aws s3 cp s3://$S3_BUCKET/$GRAFANA_INI_PATH /etc/grafana/grafana.ini

# Start Grafana
/run.sh
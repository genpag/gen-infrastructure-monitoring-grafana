#!/bin/bash

# Fetch the configuration file from S3
aws s3 cp s3://$S3_BUCKET/$TEMPO_YAML_PATH /etc/tempo/tempo.yaml

# Start Tempo
tempo --config.file=/etc/tempo/tempo.yaml
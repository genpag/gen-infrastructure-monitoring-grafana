# gen-infrastructure-monitoring-grafana

This repository contains the infrastructure code to deploy Grafana, Tempo, Loki, and Prometheus on AWS ECS using CloudFormation.

## Files

- `grafana-stack.yaml`: CloudFormation template to deploy the infrastructure.
- `devops/pipeline/buildspec.yml`: Build specification for the CI/CD pipeline.
- `devops/variables/parameters.json`: Parameters for the CloudFormation stack.
- `devops/configurationFiles/grafana.ini`: Configuration file for Grafana.
- `devops/configurationFiles/tempo.yaml`: Configuration file for Tempo.
- `devops/configurationFiles/loki.yaml`: Configuration file for Loki.
- `devops/configurationFiles/prometheus.yaml`: Configuration file for Prometheus.

## Deployment

1. Ensure you have the necessary AWS credentials and permissions to deploy the stack.
2. Update the `parameters.json` file with the appropriate values for your environment.
3. Run the CI/CD pipeline to deploy the `efs-stack.yaml` and `grafana-stack.yaml` and update the configuration files.

## Configuration

You can update the configuration files for Grafana, Tempo, Loki, and Prometheus in the `devops/configurationFiles` directory. The CI/CD pipeline will copy these files to the appropriate EFS volumes, ensuring that the containers start with the correct configuration.

## Monitoring

The deployed stack includes the following services:
- **Grafana**: Accessible at the domain specified in the `parameters.json` file.
- **Tempo**: Tracing backend for distributed tracing.
- **Loki**: Log aggregation system.
- **Prometheus**: Monitoring and alerting toolkit.

## License

This project is licensed under the MIT License.


# aws-kubernetes-jenkins

This project automates the creation of a Jenkins server on AWS using Terraform, and then uses Jenkins to create an AWS Elastic Kubernetes Service cluster with a nginx web server and monitoring tools (CloudWatch, Prometheus and Grafana), configured with both Terraform and kubectl.

## Overview

The pipeline consists of two main steps:

- **jenkins-server/**: Terraform configuration to create the Jenkins server on AWS, using an EC2 instance, VPC and S3 for the backend.
- **k8s/**: Contains the Jenkinsfile to automate the creation of the EKS cluster and deploy its configurations (such as nginx deployment, CloudWatch and Prometheus/Grafana) with Terraform and kubectl.

## Running the pipeline

1. Navigate to the `jenkins-server/` directory and run `terraform apply` to create the Jenkins server.
2. After the Jenkins server is up, configure a Jenkins pipeline job to use the Jenkinsfile in the `k8s/` directory.
3. Ensure the AWS credentials are configured in Jenkins and trigger the pipeline to: 
    - create the EKS cluster
    - deploy monitoring tools
    - deploy the nginx web server

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.

# EC2 Instance Deployment with Terraform and AWS CloudFormation

This repository contains Terraform configuration files to deploy an EC2 instance on AWS using AWS CloudFormation. The infrastructure is defined as code, allowing for easy reproducibility and scalability.

## Prerequisites

Before using this Terraform configuration, make sure you have the following prerequisites:

- Terraform installed on your local machine
- AWS IAM credentials configured with appropriate permissions

## Usage

Follow these steps to install ArgoCD on your Kubernetes cluster:

1. Clone this repository to your local machine.
2. Run `terraform init` to initialize the Terraform configuration.
3. Run `terraform apply` to apply the changes and install ArgoCD.
4. After the installation completes, access ArgoCD using the provided NodePort or LoadBalancer IP.


## Configuration

This Terraform configuration creates the following Kubernetes resources:

- Provider Configuration: Update the provider.tf file to specify your desired AWS region
- EC2 Instance Configuration: Modify the cloudformation.tf file to customize the EC2 instance's specifications according to your requirements..
- Security Group Configuration: Adjust the inbound rules in the cloudformation.tf file to control traffic to the EC2 instance.

## Cleanup

To remove ArgoCD installation, run `terraform destroy`. Make sure to take necessary backups before destroying the resources.

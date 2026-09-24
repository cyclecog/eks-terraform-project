# EKS Terraform Demo Project
This project provisions a complete Amazon EKS environment using Terraform IaC.
It includes full VPC networking, EKS cluster, worker node group, IAM permissions,
and production-ready Kubernetes manifest files for web application deployment.

## Project Overview
Infrastructure is fully defined as code.
All resources are reproducible, trackable, and can be deployed or destroyed in one command.

## Project Structure
eks-terraform-project/
├── terraform/
│   ├── backend.tf
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── k8s-manifests/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── ingress.yaml
│   └── hpa.yaml
└── README.md

## Infrastructure Features
- Full custom VPC with public subnets and private subnets
- Internet Gateway for external network access
- Complete route table configuration
- EKS Cluster IAM role and worker node IAM role
- Managed EKS node group with auto scaling range
- Proper IAM policies for EKS, CNI, and ECR access

## Kubernetes Features
- Nginx web application deployment
- Resource requests and limits for container stability
- ClusterIP internal service
- AWS ALB Ingress for public traffic exposure
- HPA (Horizontal Pod Autoscaler) auto scale by CPU usage

## Prerequisites
- AWS account with access permissions
- Terraform v1.0+
- Valid AWS credentials configured

## Deployment Steps
1. Enter terraform directory
cd terraform

2. Initialize Terraform working directory
terraform init

3. Preview infrastructure changes
terraform plan

4. Apply and create AWS resources
terraform apply

5. Deploy Kubernetes manifests after EKS ready
kubectl apply -f ../k8s-manifests/

## Cleanup Resources
terraform destroy

## Variables Description
aws_region: Default AWS deployment region
vpc_cidr: Private network CIDR for VPC
eks_cluster_name: Name of EKS cluster resource
eks_node_group_min: Minimum worker node quantity
eks_node_group_max: Maximum worker node quantity

## Output Resources
vpc_id: Created VPC unique ID
eks_cluster_endpoint: EKS cluster API address
eks_cluster_name: EKS cluster official name

## Project Highlights
- Industry standard Terraform S3 backend architecture
- Remote state support and DynamoDB state lock
- Separated public/private subnet network design
- Enterprise-grade EKS IAM permission configuration
- Auto scaling application via HPA
- Complete CI-ready structured repository layout

## Purpose
This repository is a cloud native portfolio project
to demonstrate AWS, Terraform, and Kubernetes practical engineering skills.

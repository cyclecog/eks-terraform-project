# variables.tf
variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "ap-southeast-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "eks-demo-cluster"
}

variable "eks_node_group_min" {
  description = "Minimum number of nodes in node group"
  type        = number
  default     = 2
}

variable "eks_node_group_max" {
  description = "Maximum number of nodes in node group"
  type        = number
  default     = 4
}

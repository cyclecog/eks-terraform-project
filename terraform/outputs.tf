# outputs.tf
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.eks_vpc.id
}

output "eks_cluster_endpoint" {
  description = "EKS cluster API endpoint URL"
  value       = aws_eks_cluster.eks.endpoint
}

output "eks_cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.eks.name
}

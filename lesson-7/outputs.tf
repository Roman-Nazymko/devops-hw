############################
# S3 BACKEND
############################

output "terraform_state_bucket" {
  description = "S3 bucket used for Terraform state"
  value       = module.s3_backend.bucket_name
}

output "terraform_lock_table" {
  description = "DynamoDB table used for state locking"
  value       = module.s3_backend.dynamodb_table_name
}

############################
# VPC
############################

output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnet_ids
}

############################
# ECR
############################

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = module.ecr.repository_url
}

############################
# EKS
############################

output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  description = "EKS API server endpoint"
  value       = module.eks.cluster_endpoint
}

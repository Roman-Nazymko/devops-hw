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
  value = module.eks.eks_cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.eks_cluster_endpoint
}

############################
# JENKINS
############################

output "jenkins_release" {
  value = module.jenkins.jenkins_release_name
}

output "jenkins_namespace" {
  value = module.jenkins.jenkins_namespace
}

############################
# RDS / AURORA DATABASE
############################

output "db_endpoint" {
  description = "Database endpoint"
  value       = module.rds.rds_endpoint
}

output "db_reader_endpoint" {
  description = "Reader endpoint (Aurora only)"
  value       = module.rds.rds_reader_endpoint
}

output "db_port" {
  description = "Database port"
  value       = module.rds.rds_port
}

output "db_name" {
  description = "Database name"
  value       = module.rds.database_name
}

output "db_username" {
  description = "Database master username"
  value       = module.rds.username
  sensitive   = true
}

output "db_connection_string" {
  description = "Connection string template"
  value       = module.rds.connection_string
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "ecr_repository_url" {
  description = "URL of the created ECR repository"
  value       = module.ecr.repository_url
}

output "terraform_state_bucket" {
  description = "S3 bucket used for Terraform state"
  value       = module.s3_backend.bucket_name
}

output "terraform_lock_table" {
  description = "DynamoDB table used for state locking"
  value       = module.s3_backend.dynamodb_table_name
}

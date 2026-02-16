variable "name" {
  description = "Instance or cluster name"
  type        = string
}

variable "engine" {
  description = "RDS engine type"
  type        = string
  default     = "postgres"
}

variable "engine_cluster" {
  description = "Aurora cluster engine type"
  type        = string
  default     = "aurora-postgresql"
}

variable "aurora_replica_count" {
  description = "Number of Aurora read replicas"
  type        = number
  default     = 1
}

variable "aurora_instance_count" {
  description = "Total number of Aurora instances (1 primary + replicas)"
  type        = number
  default     = 2
}

variable "engine_version" {
  description = "RDS engine version"
  type        = string
  default     = "14.7"
}

variable "instance_class" {
  description = "Instance class for RDS or Aurora"
  type        = string
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  description = "Allocated storage in GB for RDS"
  type        = number
  default     = 20
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "username" {
  description = "Master username"
  type        = string
}

variable "password" {
  description = "Master password"
  type        = string
  sensitive   = true
}

variable "vpc_id" {
  description = "VPC ID where the database will be deployed"
  type        = string
}

variable "subnet_private_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "subnet_public_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "publicly_accessible" {
  description = "Whether the database is publicly accessible"
  type        = bool
  default     = false
}

variable "multi_az" {
  description = "Enable Multi-AZ deployment for RDS"
  type        = bool
  default     = false
}

variable "parameters" {
  description = "Custom database parameters (max_connections, log_statement, work_mem, etc.)"
  type        = map(string)
  default = {
    max_connections = "200"
    log_statement   = "all"
    work_mem        = "4096"
  }
}

variable "use_aurora" {
  description = "Whether to use Aurora instead of standard RDS"
  type        = bool
  default     = false
}

variable "backup_retention_period" {
  description = "Backup retention period in days"
  type        = number
  default     = 7
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}

variable "parameter_group_family_aurora" {
  description = "Parameter group family for Aurora PostgreSQL"
  type        = string
  default     = "aurora-postgresql15"
}

variable "engine_version_cluster" {
  description = "Aurora cluster engine version"
  type        = string
  default     = "15.3"
}

variable "parameter_group_family_rds" {
  description = "Parameter group family for RDS PostgreSQL"
  type        = string
  default     = "postgres15"
}

variable "db_port" {
  description = "Database port"
  type        = number
  default     = 5432
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block for security group ingress"
  type        = string
}

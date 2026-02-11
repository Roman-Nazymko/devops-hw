terraform {
  backend "s3" {
    bucket         = "roma-terraform-state-12345"
    key            = "lesson-5/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

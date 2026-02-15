resource "aws_ecr_repository" "this" {
  name = var.ecr_name
  force_delete = true

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }

  tags = {
    Name = var.ecr_name
  }
}

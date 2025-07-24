provider "aws" {
  region = "us-east-1" # Change to your preferred region
}

resource "aws_ecr_repository" "main" {
  name                 = "my-ecr-repo" # Change to your desired repo name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
} 
resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = "t2.micro" # Free tier eligible

  tags = {
    Name = var.instance_name
  }
} 
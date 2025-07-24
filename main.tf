provider "aws" {
  region  = "us-east-1"
  profile = "personal"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = data.aws_ami.ubuntu.id
  instance_name = "ubuntu-free-tier-instance"
} 
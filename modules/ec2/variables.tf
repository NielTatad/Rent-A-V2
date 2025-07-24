variable "ami_id" {
  description = "The AMI ID for the Ubuntu image."
  type        = string
}

variable "instance_name" {
  description = "The name tag for the EC2 instance."
  type        = string
  default     = "practice-ec2"
} 
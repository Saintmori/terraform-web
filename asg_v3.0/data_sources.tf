data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
data "template_file" "userdata" {
  template = file("user_data.sh")
  vars = {
    "environment" = var.env
  }
}
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "aws-session-backend-file-bucket"
    key    = "terraform-web/vpc3/terraform.tfstate"
    region = "us-east-1"
  }
}
data "terraform_remote_state" "alb" {
  backend = "s3"
  config = {
    bucket = "aws-session-backend-file-bucket"
    key    = "terraform-web/alb.3/terraform.tfstate"
    region = "us-east-1"
  }
}

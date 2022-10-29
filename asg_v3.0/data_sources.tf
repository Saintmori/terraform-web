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
data "aws_vpc" "selected_vpc" {
  filter {
    name   = "tag:Name"
    values = ["aws-ue1-nonprod-dev-cat-main-vpc"]
  }
}
data "aws_lb_target_group" "main" {
  arn  = "arn:aws:elasticloadbalancing:us-east-1:731824476967:targetgroup/aws-ue1-nonprod-dev-cat-main-tg/931624f5f53ffdf8"
  name = "aws-ue1-nonprod-dev-cat-main-tg"
}
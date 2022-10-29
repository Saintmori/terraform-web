data "aws_vpc" "selected_vpc" {
  filter {
    name   = "tag:Name"
    values = ["aws-ue1-nonprod-dev-cat-main-vpc"]
  }
}
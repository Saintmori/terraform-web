data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "aws-session-backend-file-bucket"
    key    = "terraform-web/vpc3/terraform.tfstate"
    region = "us-east-1"
  }
}
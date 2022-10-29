terraform {
  backend "s3" {
    bucket         = "aws-session-backend-file-bucket"
    key            = "terraform-web/vpc3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-may2022-state-lock-table"
  }
}
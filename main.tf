
provider "aws" {
  region = "ca-central-1" 
}

terraform {
  backend "s3" {
    bucket         = "terraform-state-theopc"
    key            = "terraform/state"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

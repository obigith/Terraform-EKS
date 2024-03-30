# configure aws provider
provider "aws" {
  region  = var.region
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "source-eks"
    key            = "eks.terraform.tfstate"
    region         = "us-east-1"
    
  }
}

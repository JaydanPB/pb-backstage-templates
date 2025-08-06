# 📂 skeleton/main.tf
# This Terraform code is stamped with variables and run to create the infrastructure.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "${{ values.awsRegion }}"
  assume_role {
    role_arn = "arn:aws:iam::${{ values.awsAccountId }}:role/BackstageTerraformRole"
  }
}

resource "aws_instance" "web_server" {
  ami           = "ami-04a7c037911037563"
  instance_type = "${{ values.instanceType }}"

  tags = {
    Name        = "${{ values.instanceName }}"
    Owner       = "${{ values.owner }}"
    Provisioned = "Backstage Scaffolder"
  }
}

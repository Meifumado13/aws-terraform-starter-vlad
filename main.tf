// -----------------------------------------------------------
// main.tf — AWS Infrastructure Deployment
// Author: Vlad 
// Description: Core Terraform configuration for AWS infra.
// This file defines provider, resources, variables, and logic.
// Last Updated: 2025-05-27
// -----------------------------------------------------------

terraform {
  required_version = ">= 1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Vlad's First Instance"
  }
}

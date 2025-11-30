terraform { 
  cloud { 
    
    organization = "Terraform_Demo_Organization" 

    workspaces { 
      name = "tfcGitProject" 
    } 
  }
 required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "~> 5.0"

    }
  }
}

provider "aws" {

  region = "us-east-1"

}



resource "aws_s3_bucket" "demo" {

  bucket = "tfc-cli-demo-bucket-123"

}

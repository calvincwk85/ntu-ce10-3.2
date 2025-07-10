terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2"
    }
  }

  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "cal-sctp-tfci-tfstate" #Change this
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "s3_tf" {
  bucket_prefix = "cal-sctp-tfci-bucket" # Set your bucket name here
}


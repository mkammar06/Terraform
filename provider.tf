provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3"{
      bucket ="backendterraformbucket"
      key = "mkammar06/tfstate"
      region = "us-east-1"
  }
}
terraform {
  backend "s3" {
    bucket         = "imsdengineer" # change this
    key            = "imran/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
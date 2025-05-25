terraform {
  backend "s3" {
    bucket         = "python-0125" # Replace with your bucket name
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}

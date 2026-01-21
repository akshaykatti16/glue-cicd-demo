terraform {
  backend "s3" {
    bucket = "nagarro-terraform-state"
    key    = "glue/qa/terraform.tfstate"
    region = "ap-south-1"
  }
}

terraform {
  backend "s3" {
    bucket = "ce6-tfstate-bucket"
    key    = "ce6-vpc.tfstate" #Name of state file in s3 bucket
    region = "ap-southeast-1"
  }
}
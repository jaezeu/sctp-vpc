terraform {
  backend "s3" {
    bucket = "sctp-core-tfstate"
    key    = "ce8-vpc.tfstate" #Name of state file in s3 bucket
    region = "us-east-1"
  }
}
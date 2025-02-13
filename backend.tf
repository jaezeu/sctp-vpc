terraform {
  backend "s3" {
    bucket = "sctp-ce9-tfstate"
    key    = "ce9-vpc.tfstate" #Name of state file in s3 bucket
    region = "us-east-1"
  }
}
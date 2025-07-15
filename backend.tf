terraform {
  backend "s3" {
    bucket = "sctp-core-tfstate"
    key    = "ce11-vpc.tfstate"
    region = "ap-southeast-1"
  }
}
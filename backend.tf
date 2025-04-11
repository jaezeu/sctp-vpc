terraform {
  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "ce10-vpc.tfstate"
    region = "ap-southeast-1"
  }
}
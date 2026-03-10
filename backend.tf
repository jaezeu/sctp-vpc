terraform {
  backend "s3" {
    bucket = "sctp-core-tfstate"
    key    = "ce-learner-vpc.tfstate"
    region = "ap-southeast-1"
  }
}
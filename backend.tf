terraform {
  backend "s3" {
    bucket = "ce6-tfstate-bucket"
    key    = "ce6-vpc.tfstate"
    region = "ap-southeast-1"
  }
}
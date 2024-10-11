terraform {
  backend "s3" {
    bucket = "mytodoappbucket"
    key    = "eks/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
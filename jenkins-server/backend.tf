terraform {
  backend "s3" {
    bucket = "steve-bucket"
    key    = "jenkins/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
terraform {
    backend "s3" {
      bucket = "tfstate-s3-bucket"
      key = "tfstate"
      region = "us-east-1"
      dynamodb_table = "tfstate-locing"
    }
}
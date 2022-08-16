provider "aws" {
  region = "eu-central-1"
}

variable "s3_bucket_names" {
  type    = list(any)
  default = ["simple-ml-raw", "simple-ml-dvc-remote", "simple-ml-data-registry"]
}

resource "aws_s3_bucket" "bucket_list" {
  count         = length(var.s3_bucket_names)
  bucket        = var.s3_bucket_names[count.index]
  force_destroy = true
  tags = {
    Environment = "test"
    Project     = "Weather forecast"
  }
}

resource "aws_s3_bucket_acl" "bucket_list_acl" {
  count  = length(var.s3_bucket_names)
  bucket = var.s3_bucket_names[count.index]
  acl    = "private"
}

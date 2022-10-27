resource "aws_s3_bucket" "my_cool_bucket" {
  bucket_prefix = "awesome"
  acl           = "private"

  lifecycle {
    prevent_destroy = true
  }

  versioning {
    enabled = true
  }
}
resource "aws_s3_bucket" "yakhub_bucket" {
  bucket = "mine-test-bucket"
  acl    = "private"

  tags = {
    Name        = "sample_bucket"
    Environment = "Dev"
  }
}

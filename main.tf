resource "aws_s3_bucket" "yakhub_bucket" {
  bucket = "yakhub-test-bucket"

  tags = {
    Name        = "sample_bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "yakhub_bucket_acl" {
  bucket = aws_s3_bucket.yakhub_bucket.id

  acl = "private"
}

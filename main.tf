resource "aws_s3_bucket" "yakhub_bucket" {
  bucket = "yakhub-test-bucket"
  aws_s3_bucket_acl    = "private"

  tags = {
    Name        = "sample_bucket"
    Environment = "Dev"
  }
}

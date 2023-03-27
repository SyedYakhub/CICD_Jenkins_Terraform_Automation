resource "aws_s3_bucket" "yakhub_bucket" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "sample_bucket"
    Environment = "Dev"
  }
}

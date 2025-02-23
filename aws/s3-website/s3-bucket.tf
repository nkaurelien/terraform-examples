resource "aws_s3_bucket" "bucket-1" {
  bucket        = "www.${var.bucket_name}"
  tags          = var.tags
  force_destroy = true
}
data "aws_s3_bucket" "selected-bucket" {
  bucket = aws_s3_bucket.bucket-1.bucket
}
output "bucket_arn" {
  description = "ARN of the s3 Bucket"
  value       = data.aws_s3_bucket.selected-bucket.arn
}

output "bucket_id" {
  description = "ID of the s3 Bucket"
  value       = data.aws_s3_bucket.selected-bucket.id
}

output "bucket_domain" {
  description = "Domain of the s3 Bucket"
  value       = data.aws_s3_bucket.selected-bucket.website_domain
}

output "bucket_endpoint" {
  description = "Endpoint of the s3 Bucket"
  value       = data.aws_s3_bucket.selected-bucket.website_endpoint

}
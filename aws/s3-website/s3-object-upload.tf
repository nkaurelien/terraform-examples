# resource "aws_s3_object" "object-upload-html" {
#     for_each        = fileset("uploads/", "*.html")
#     bucket          = data.aws_s3_bucket.selected-bucket.bucket
#     key             = each.value
#     source          = "uploads/${each.value}"
#     content_type    = "text/html"
#     etag            = filemd5("uploads/${each.value}")
#     acl             = "public-read"
# }
# resource "aws_s3_object" "object-upload-jpg" {
#     for_each        = fileset("uploads/", "*.jpeg")
#     bucket          = data.aws_s3_bucket.selected-bucket.bucket
#     key             = each.value
#     source          = "uploads/${each.value}"
#     content_type    = "image/jpeg"
#     etag            = filemd5("uploads/${each.value}")
#     acl             = "public-read"
# }

resource "aws_s3_object" "s3_upload_file" {
  bucket       = data.aws_s3_bucket.selected-bucket.id
  source       = "index.html" # Local path to the file
  key          = "index.html" # The formal name in the s3Bucket
  content_type = "text/html"
  #   acl          = "public-read"
  etag = filemd5("index.html")
}
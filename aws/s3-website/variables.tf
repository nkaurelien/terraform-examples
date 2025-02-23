variable "bucket_name" {
  description = "Unique Name Across The Entire AWS Cloud"
  type        = string
}

variable "tags" {
  description = "Map of s3 bucket Tags"
  type        = map(string)
  default     = {}
}

variable "domain_name" {
  type        = string
  description = "Name of the domain"
}

variable "region" {
  type    = string
  default = "us-west-2"
}

# variable "access_key" {
#   type = string
# }
# variable "secret_key" {
#   type = string
# }

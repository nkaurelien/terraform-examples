# resource "aws_ami_copy" "example" {
#   name              = "terraform-example"
#   source_ami_id     = "ami-xxxxxxxx"
#   source_ami_region = "us-west-1"

#   tags = {
#     Name = "HelloWorld"
#   }
# }
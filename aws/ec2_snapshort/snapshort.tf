variable "snapshot_name" {
  default = "ubuntu-nginx-webserver-snapshot"
}

variable "snapshot_description" {
  default = "Snapshot of ubuntu-nginx-webserver instance"
}


resource "aws_ami_from_instance" "snapshot" {
  name                    = local.snapshot_name
  source_instance_id      = data.aws_instance.app_server.id
  snapshot_without_reboot = true

  tags = {
    Name        = "${local.snapshot_name}"
    Project     = "kuba-test"
    Environment = "sandbox"
    CreatedBy   = "nkaurelien"
    Purpose     = "backup"
  }
}

# resource "aws_ebs_snapshot" "app_server_snapshot" {
#   volume_id = data.aws_instance.app_server.root_block_device[0].volume_id
#   description = local.snapshot_desc

#    tags = {
#     Name        = local.snapshot_name
#     # Project     = "kuba-test"
#     Environment = "sandbox"
#     CreatedBy   = "nkaurelien"
#     Purpose     = "backup"
#   }
# }

# Helper function to get the current timestamp
locals {
  timestamp = formatdate("YYYYMMDDHHmmss", timestamp())
}

locals {
  snapshot_name = "${var.snapshot_name}-${local.timestamp}"
  snapshot_desc = "${var.snapshot_description} ${local.timestamp} ${data.aws_instance.app_server.id} ${data.aws_instance.app_server.ami}"
}
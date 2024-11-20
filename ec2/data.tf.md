
```python hcl


data "aws_ami" "example" {
  for_each = var.instance_types

  most_recent = true
  owners     = var.owners

  filter {
    name   = "architecture"
    values = [each.value.architecture]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-${each.value.architecture}-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

output "ami_ids" {
  value = { for k, v in data.aws_ami.example : k => v.id }
}
```
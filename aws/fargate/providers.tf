provider "aws" {
  region = var.aws_region


  # default_tags {
  #   tags = { example = local.example }
  # }
}

# * Give Docker permission to pusher Docker images to AWS
locals { ecr_address = format("%v.dkr.ecr.%v.amazonaws.com", data.aws_caller_identity.this.account_id, data.aws_region.this.name) }

provider "docker" {
  registry_auth {
    address  = local.ecr_address
    password = data.aws_ecr_authorization_token.this.password
    username = data.aws_ecr_authorization_token.this.user_name
  }
}

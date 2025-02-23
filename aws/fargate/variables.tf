# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0



variable "aws_region" {
  default     = "us-east-1"
  description = "The AWS region things are created in"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}


variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  # default     = 1024 * 1
  default = 256
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  # default     = "2048"
  default = 512
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8080

}
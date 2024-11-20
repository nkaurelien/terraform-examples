

```python hcl
variable "instance_types" {
  type = map(object({
    architecture = string
    vcpu         = number
    memory       = number
  }))

  default = {
    t3.small     = { architecture = "x86_64", vcpu = 2, memory = 2 }
    t3.medium    = { architecture = "x86_64", vcpu = 2, memory = 4 }
    t3.large     = { architecture = "x86_64", vcpu = 2, memory = 8 }
    t3.xlarge    = { architecture = "x86_64", vcpu = 4, memory = 16 }
    t3.2xlarge   = { architecture = "x86_64", vcpu = 8, memory = 32 }
    a1.medium    = { architecture = "arm64", vcpu = 1, memory = 2 }
    a1.large     = { architecture = "arm64", vcpu = 2, memory = 4 }
    a1.xlarge    = { architecture = "arm64", vcpu = 4, memory = 8 }
    a1.2xlarge   = { architecture = "arm64", vcpu = 8, memory = 16 }
    a1.4xlarge   = { architecture = "arm64", vcpu = 16, memory = 32 }
    t1.micro     = { architecture = "x86_64", vcpu = 1, memory = 0.612 }
    t2.nano      = { architecture = "x86_64", vcpu = 1, memory = 0.5 }
    t2.micro     = { architecture = "x86_64", vcpu = 1, memory = 1 }
    t2.small     = { architecture = "x86_64", vcpu = 1, memory = 2 }
    t2.medium    = { architecture = "x86_64", vcpu = 2, memory = 4 }
    t2.large     = { architecture = "x86_64", vcpu = 2, memory = 8 }
    t2.xlarge    = { architecture = "x86_64", vcpu = 4, memory = 16 }
    t2.2xlarge   = { architecture = "x86_64", vcpu = 8, memory = 32 }
    t3.nano      = { architecture = "x86_64", vcpu = 2, memory = 0.5 }
    t3.micro     = { architecture = "x86_64", vcpu = 2, memory = 1 }
    c4.4xlarge   = { architecture = "x86_64", vcpu = 16, memory = 30 }
    c4.8xlarge   = { architecture = "x86_64", vcpu = 36, memory = 60 }
    c5.large     = { architecture = "x86_64", vcpu = 2, memory = 4 }
    c5.xlarge    = { architecture = "x86_64", vcpu = 4, memory = 8 }
    c5.2xlarge   = { architecture = "x86_64", vcpu = 8, memory = 16 }
    c5.4xlarge   = { architecture = "x86_64", vcpu = 16, memory = 32 }
    c5.9xlarge   = { architecture = "x86_64", vcpu = 36, memory = 72 }
    c5.12xlarge  = { architecture = "x86_64", vcpu = 48, memory = 96 }
    c5.18xlarge  = { architecture = "x86_64", vcpu = 72, memory = 144 }
    c5.24xlarge  = { architecture = "x86_64", vcpu = 96, memory = 192 }
    c5a.large    = { architecture = "x86_64", vcpu = 2, memory = 4 }
    c5a.xlarge   = { architecture = "x86_64", vcpu = 4, memory = 8 }
    c5a.2xlarge  = { architecture = "x86_64", vcpu = 8, memory = 16 }
    c5a.4xlarge  = { architecture = "x86_64", vcpu = 16, memory = 32 }
    c5a.8xlarge  = { architecture = "x86_64", vcpu = 32, memory = 64 }
    c5a.12xlarge = { architecture = "x86_64", vcpu = 48, memory = 96 }
    c5a.16xlarge = { architecture = "x86_64", vcpu = 64, memory = 128 }
    c5a.24xlarge = { architecture = "x86_64", vcpu = 96, memory = 192 }
    c5.metal     = { architecture = "x86_64", vcpu = 96, memory = 192 }
    a1.metal     = { architecture = "arm64", vcpu = 16, memory = 32 }
    c1.medium    = { architecture = "x86_64", vcpu = 2, memory = 1.7 }
    c1.xlarge    = { architecture = "x86_64", vcpu = 8, memory = 7 }
    c3.large     = { architecture = "x86_64", vcpu = 2, memory = 3.75 }
    c3.xlarge    = { architecture = "x86_64", vcpu = 4, memory = 7.5 }
    c3.2xlarge   = { architecture = "x86_64", vcpu = 8, memory = 15 }
    c3.4xlarge   = { architecture = "x86_64", vcpu = 16, memory = 30 }
    c3.8xlarge   = { architecture = "x86_64", vcpu = 32, memory = 60 }
    c4.large     = { architecture = "x86_64", vcpu = 2, memory = 3.75 }
    c4.xlarge    = { architecture = "x86_64", vcpu = 4, memory = 7.5 }
  }
}

```


# AWS s3 Bucket Static Website Hosting Using Modules

- This module provisions AWS s3 buckets configurations for a static website hosting.
- Additionally, it also expect to upload the `index.html` file as the default index document.
- Consider this as a simple demo for your learning.
- Review its content before using it in your environment.
- The root module is two directories up.
- This repository is free of usage and welcomes improvements and feedback.

# RUN 

```console
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=

terraform init

terraform plan -var-file terraform-dev.tfvars

terraform apply -var.file terraform-dev.tfvars
```

# Credits

- https://medium.com/@frankpromiseedah/hosting-a-static-website-on-aws-s3-using-terraform-e12addd22d18
- https://github.com/Frankpromise/aws-solutions-architect/tree/master/s3-static-website
- https://www.w3schools.com/w3css/w3css_templates.asp
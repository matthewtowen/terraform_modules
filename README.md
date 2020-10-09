# AWS Static Website Terraform Module

Terraform module which provisions required AWS resources to host a static website.

## Features

This Terraform module creates the following AWS resources:

* **S3**
  * Bucket to store the content.
  * Uploads holding page files/index.html
* **Route53**
  * A hosted zone.
  * A record pointing to the S3 bucket.

## Requirements

* An AWS account and your credentials (`aws_access_key_id` and `aws_secret_access_key`) configured.
* You own a domain name and have access to update the name servers.
* The domain name and S3 bucket must be the same.

## Module Usage

```HCL
module "s3_static_site" {
  source             = "git@github.com:matthewtowen/terraform_modules.git//s3_static_site"
  domain_name        = var.domain_name
}

terraform.tfvars
```HCL
domain_name = "iffleygrove.org"

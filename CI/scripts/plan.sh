#!/bin/bash
set -e

## Terraform plan ##

cd infrastructure/aws/
terraform init
terraform workspace select $1 || terraform workspace new $1
terraform plan
cd ../../

##

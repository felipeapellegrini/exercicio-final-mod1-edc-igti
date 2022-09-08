terraform {
  backend "s3" {
    bucket = "terraform-felipe-862040561963"
    key = "state/igti/edc/mod1/terraform.tfstate"
    region = "sa-east-1"
  }
}

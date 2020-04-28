# This assumes we have a bucket created called mybucket.
# The Terraform state is written to the key path/to/my/key.
# save this file without the ".backup" extension

terraform {
  backend "s3" {
    bucket         = "stlrda-terraform-tfstates"
    key            = "uw211dashboard/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-211-tfstate"
  }
}

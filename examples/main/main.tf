provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

module "mta-sts" {
  source = "github.com/robo9k/terraform-aws-mta-sts"

  domain_name = "example.invalid"
  mode        = "testing"
  mx          = ["mx1.example.invalid", "mx2.example.invalid"]
  max_age     = 86400
  rua         = "tls-rpt@example.invalid"
}
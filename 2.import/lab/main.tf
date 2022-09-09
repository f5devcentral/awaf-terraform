terraform {
  required_providers {
    bigip = {
      source = "F5Networks/bigip"
      version = "1.15.0"
    }
  }
}
provider "bigip" {
  address  = var.bigip
  username = var.username
  password = var.password
}

resource "bigip_waf_policy" "this" {
  partition                 = "Common"
  name                      = "scenario2"
  template_name             = "POLICY_TEMPLATE_RAPID_DEPLOYMENT"
}

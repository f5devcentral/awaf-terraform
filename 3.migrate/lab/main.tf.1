terraform {
  required_providers {
    bigip = {
      source = "F5Networks/bigip"
      version = "1.15"
    }
  }
}
provider "bigip" {
  alias    = "old"
  address  = var.previous_bigip
  username = var.username
  password = var.password
}
provider "bigip" {
  alias    = "new"
  address  = var.new_bigip
  username = var.username
  password = var.password
}

resource "bigip_waf_policy" "current" {
  provider	           = bigip.old
  partition            	   = "Common"
  name                     = "scenario3"
  template_name            = "POLICY_TEMPLATE_RAPID_DEPLOYMENT"
}

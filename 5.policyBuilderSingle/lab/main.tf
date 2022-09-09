terraform {
  required_providers {
    bigip = {
      source = "F5Networks/bigip"
      version = "1.15"
    }
  }
}

provider "bigip" {
  alias    = "prod"
  address  = var.prod_bigip
  username = var.username
  password = var.password
}

data "http" "scenario5" {
  url = "https://raw.githubusercontent.com/fchmainy/awaf_tf_docs/main/0.Appendix/Common_scenario5__2022-8-12_15-49-28__prod1.f5demo.com.json"
  request_headers = {
  	Accept = "application/json"
  }
}

resource "bigip_waf_policy" "this" {
    provider	           = bigip.prod
    application_language = "utf-8"
    partition            = "Common"
    name                 = "scenario5"
    template_name        = "POLICY_TEMPLATE_FUNDAMENTAL"
    type                 = "security"
    policy_import_json   = data.http.scenario5.body
}

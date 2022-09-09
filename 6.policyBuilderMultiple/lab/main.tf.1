terraform {
  required_providers {
    bigip = {
      source 			= "F5Networks/bigip"
      version 			= "1.15"
    }
  }
}

provider "bigip" {
  alias    			= "prod1"
  address  			= var.prod_dc1_bigip
  username 			= var.username
  password 			= var.password
}

provider "bigip" {
  alias    			= "prod2"
  address  			= var.prod_cloud_bigip
  username 			= var.username
  password 			= var.password
}

provider "bigip" {
  alias    			= "qa"
  address  			= var.qa_bigip
  username 			= var.username
  password 			= var.password
}

resource "bigip_waf_policy" "P1S6" {
    provider	           	= bigip.prod1
    application_language 	= "utf-8"
    partition			= "Common"
    name                 	= "scenario6"
    enforcement_mode     	= "blocking"
    template_name        	= "POLICY_TEMPLATE_RAPID_DEPLOYMENT"
}

resource "bigip_waf_policy" "P2S6" {
    provider	           	= bigip.prod2
    application_language 	= "utf-8"
    partition			= "Common"
    name                 	= "scenario6"
    enforcement_mode     	= "blocking"
    template_name        	= "POLICY_TEMPLATE_RAPID_DEPLOYMENT"
}

resource "bigip_waf_policy" "QAS6" {
    provider	           	= bigip.qa
    application_language 	= "utf-8"
    partition			= "Common"
    name                 	= "scenario6"
    enforcement_mode     	= "blocking"
    template_name        	= "POLICY_TEMPLATE_RAPID_DEPLOYMENT"
}

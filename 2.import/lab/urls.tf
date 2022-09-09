data "bigip_waf_entity_url" "U1" {
  name		              = "/URL1"
  description                 = "this is a test for URL1"
  type                        = "explicit"
  protocol                    = "http"
  perform_staging             = true
  signature_overrides_disable = [12345678, 87654321]
  method_overrides {
    allow  = false
    method = "BCOPY"
  }
  method_overrides {
    allow  = true
    method = "BDELETE"
  }
}

data "bigip_waf_entity_url" "U2" {
  name                        = "/URL2"
}

data "bigip_waf_signatures" "S1" {
  provider         = bigip.new
  signature_id     = 200104004
  description      = "Java Code Execution"
  enabled          = true
  perform_staging  = true
}

data "bigip_waf_signatures" "S2" {
  provider         = bigip.new
  signature_id     = 200104005
  enabled          = false
}

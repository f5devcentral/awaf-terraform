data "bigip_waf_signatures" "S1" {
  signature_id     = 200010293
  description      = "Java Code Execution"
  enabled          = true
  perform_staging  = true
}

data "bigip_waf_signatures" "S2" {
  signature_id      = 200009024
  enabled          = false
}

data "bigip_waf_signatures" "S3" {
  signature_id      = 200014009
  description      = "src http: (Header)"
  enabled          = true
  perform_staging  = false
}

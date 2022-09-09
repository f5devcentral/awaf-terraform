output "policyId" {
	value	= bigip_waf_policy.current.policy_id
}


output "policyJSON" {
        value   = bigip_waf_policy.current.policy_export_json
}

output "xray_sampling_rules_id" {
  description = "Map of id values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "xray_sampling_rules_arn" {
  description = "Map of arn values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "xray_sampling_rules_attributes" {
  description = "Map of attributes values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "xray_sampling_rules_fixed_rate" {
  description = "Map of fixed_rate values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.fixed_rate if v.fixed_rate != null }
}
output "xray_sampling_rules_host" {
  description = "Map of host values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.host if v.host != null && length(v.host) > 0 }
}
output "xray_sampling_rules_http_method" {
  description = "Map of http_method values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.http_method if v.http_method != null && length(v.http_method) > 0 }
}
output "xray_sampling_rules_priority" {
  description = "Map of priority values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.priority if v.priority != null }
}
output "xray_sampling_rules_region" {
  description = "Map of region values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "xray_sampling_rules_reservoir_size" {
  description = "Map of reservoir_size values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.reservoir_size if v.reservoir_size != null }
}
output "xray_sampling_rules_resource_arn" {
  description = "Map of resource_arn values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.resource_arn if v.resource_arn != null && length(v.resource_arn) > 0 }
}
output "xray_sampling_rules_rule_name" {
  description = "Map of rule_name values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.rule_name if v.rule_name != null && length(v.rule_name) > 0 }
}
output "xray_sampling_rules_service_name" {
  description = "Map of service_name values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "xray_sampling_rules_service_type" {
  description = "Map of service_type values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.service_type if v.service_type != null && length(v.service_type) > 0 }
}
output "xray_sampling_rules_tags" {
  description = "Map of tags values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "xray_sampling_rules_tags_all" {
  description = "Map of tags_all values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "xray_sampling_rules_url_path" {
  description = "Map of url_path values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.url_path if v.url_path != null && length(v.url_path) > 0 }
}
output "xray_sampling_rules_version" {
  description = "Map of version values across all xray_sampling_rules, keyed the same as var.xray_sampling_rules"
  value       = { for k, v in aws_xray_sampling_rule.xray_sampling_rules : k => v.version if v.version != null }
}


variable "xray_sampling_rules" {
  description = <<EOT
Map of xray_sampling_rules, attributes below
Required:
    - fixed_rate
    - host
    - http_method
    - priority
    - reservoir_size
    - resource_arn
    - service_name
    - service_type
    - url_path
    - version
Optional:
    - attributes
    - region
    - rule_name
    - tags
    - tags_all
EOT

  type = map(object({
    fixed_rate     = number
    host           = string
    http_method    = string
    priority       = number
    reservoir_size = number
    resource_arn   = string
    service_name   = string
    service_type   = string
    url_path       = string
    version        = number
    attributes     = optional(map(string))
    region         = optional(string)
    rule_name      = optional(string)
    tags           = optional(map(string))
    tags_all       = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.xray_sampling_rules : (
        length(v.host) >= 0 && length(v.host) <= 64
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.xray_sampling_rules : (
        length(v.http_method) >= 0 && length(v.http_method) <= 10
      )
    ])
    error_message = "must be between 0 and 10 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.xray_sampling_rules : (
        v.reservoir_size >= 0
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.xray_sampling_rules : (
        v.rule_name == null || (length(v.rule_name) >= 1 && length(v.rule_name) <= 32)
      )
    ])
    error_message = "must be between 1 and 32 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.xray_sampling_rules : (
        length(v.service_type) >= 0 && length(v.service_type) <= 64
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.xray_sampling_rules : (
        length(v.url_path) >= 0 && length(v.url_path) <= 128
      )
    ])
    error_message = "must be between 0 and 128 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


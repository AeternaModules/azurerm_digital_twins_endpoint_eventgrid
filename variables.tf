variable "digital_twins_endpoint_eventgrids" {
  description = <<EOT
Map of digital_twins_endpoint_eventgrids, attributes below
Required:
    - digital_twins_id
    - eventgrid_topic_endpoint
    - eventgrid_topic_primary_access_key
    - eventgrid_topic_secondary_access_key
    - name
Optional:
    - dead_letter_storage_secret
EOT

  type = map(object({
    digital_twins_id                     = string
    eventgrid_topic_endpoint             = string
    eventgrid_topic_primary_access_key   = string
    eventgrid_topic_secondary_access_key = string
    name                                 = string
    dead_letter_storage_secret           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_endpoint_eventgrids : (
        length(v.name) >= 3
      )
    ])
    error_message = "[from validate.DigitalTwinsInstanceName: invalid when len(value) < 3]"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_endpoint_eventgrids : (
        length(v.name) <= 63
      )
    ])
    error_message = "[from validate.DigitalTwinsInstanceName: invalid when len(value) > 63]"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_endpoint_eventgrids : (
        length(v.eventgrid_topic_primary_access_key) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_endpoint_eventgrids : (
        length(v.eventgrid_topic_secondary_access_key) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_endpoint_eventgrids : (
        v.dead_letter_storage_secret == null || (length(v.dead_letter_storage_secret) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


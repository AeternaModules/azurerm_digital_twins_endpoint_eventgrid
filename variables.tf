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
  # --- Unconfirmed validation candidates, derived from azurerm_digital_twins_endpoint_eventgrid's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.DigitalTwinsInstanceName] !ok
  # path: name
  #   condition: length(value) >= 3
  #   message:   [from validate.DigitalTwinsInstanceName: invalid when len(value) < 3]
  #   source:    [from validate.DigitalTwinsInstanceName: invalid when len(value) < 3]
  # path: name
  #   condition: length(value) <= 63
  #   message:   [from validate.DigitalTwinsInstanceName: invalid when len(value) > 63]
  #   source:    [from validate.DigitalTwinsInstanceName: invalid when len(value) > 63]
  # path: name
  #   source:    [from validate.DigitalTwinsInstanceName] !regexp.MustCompile(`^[A-Za-z0-9][A-Za-z0-9-]+[A-Za-z0-9]$`).MatchString(v)
  # path: digital_twins_id
  #   source:    [from digitaltwinsinstance.ValidateDigitalTwinsInstanceID] !ok
  # path: digital_twins_id
  #   source:    [from digitaltwinsinstance.ValidateDigitalTwinsInstanceID] err != nil
  # path: eventgrid_topic_endpoint
  #   source:    validation.IsURLWithHTTPS(...) - no translation rule yet, add one
  # path: eventgrid_topic_primary_access_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: eventgrid_topic_secondary_access_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: dead_letter_storage_secret
  #   condition: length(value) > 0
  #   message:   must not be empty
}


output "digital_twins_endpoint_eventgrids_id" {
  description = "Map of id values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.id if v.id != null && length(v.id) > 0 }
}
output "digital_twins_endpoint_eventgrids_dead_letter_storage_secret" {
  description = "Map of dead_letter_storage_secret values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.dead_letter_storage_secret if v.dead_letter_storage_secret != null && length(v.dead_letter_storage_secret) > 0 }
}
output "digital_twins_endpoint_eventgrids_digital_twins_id" {
  description = "Map of digital_twins_id values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.digital_twins_id if v.digital_twins_id != null && length(v.digital_twins_id) > 0 }
}
output "digital_twins_endpoint_eventgrids_eventgrid_topic_endpoint" {
  description = "Map of eventgrid_topic_endpoint values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.eventgrid_topic_endpoint if v.eventgrid_topic_endpoint != null && length(v.eventgrid_topic_endpoint) > 0 }
}
output "digital_twins_endpoint_eventgrids_eventgrid_topic_primary_access_key" {
  description = "Map of eventgrid_topic_primary_access_key values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.eventgrid_topic_primary_access_key if v.eventgrid_topic_primary_access_key != null && length(v.eventgrid_topic_primary_access_key) > 0 }
}
output "digital_twins_endpoint_eventgrids_eventgrid_topic_secondary_access_key" {
  description = "Map of eventgrid_topic_secondary_access_key values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.eventgrid_topic_secondary_access_key if v.eventgrid_topic_secondary_access_key != null && length(v.eventgrid_topic_secondary_access_key) > 0 }
}
output "digital_twins_endpoint_eventgrids_name" {
  description = "Map of name values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.name if v.name != null && length(v.name) > 0 }
}


output "digital_twins_endpoint_eventgrids_id" {
  description = "Map of id values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.id }
}
output "digital_twins_endpoint_eventgrids_dead_letter_storage_secret" {
  description = "Map of dead_letter_storage_secret values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.dead_letter_storage_secret }
}
output "digital_twins_endpoint_eventgrids_digital_twins_id" {
  description = "Map of digital_twins_id values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.digital_twins_id }
}
output "digital_twins_endpoint_eventgrids_eventgrid_topic_endpoint" {
  description = "Map of eventgrid_topic_endpoint values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.eventgrid_topic_endpoint }
}
output "digital_twins_endpoint_eventgrids_eventgrid_topic_primary_access_key" {
  description = "Map of eventgrid_topic_primary_access_key values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.eventgrid_topic_primary_access_key }
}
output "digital_twins_endpoint_eventgrids_eventgrid_topic_secondary_access_key" {
  description = "Map of eventgrid_topic_secondary_access_key values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.eventgrid_topic_secondary_access_key }
}
output "digital_twins_endpoint_eventgrids_name" {
  description = "Map of name values across all digital_twins_endpoint_eventgrids, keyed the same as var.digital_twins_endpoint_eventgrids"
  value       = { for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : k => v.name }
}


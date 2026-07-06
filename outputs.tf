output "digital_twins_endpoint_eventgrids" {
  description = "All digital_twins_endpoint_eventgrid resources"
  value       = azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids
}
output "digital_twins_endpoint_eventgrids_dead_letter_storage_secret" {
  description = "List of dead_letter_storage_secret values across all digital_twins_endpoint_eventgrids"
  value       = [for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : v.dead_letter_storage_secret]
}
output "digital_twins_endpoint_eventgrids_digital_twins_id" {
  description = "List of digital_twins_id values across all digital_twins_endpoint_eventgrids"
  value       = [for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : v.digital_twins_id]
}
output "digital_twins_endpoint_eventgrids_eventgrid_topic_endpoint" {
  description = "List of eventgrid_topic_endpoint values across all digital_twins_endpoint_eventgrids"
  value       = [for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : v.eventgrid_topic_endpoint]
}
output "digital_twins_endpoint_eventgrids_eventgrid_topic_primary_access_key" {
  description = "List of eventgrid_topic_primary_access_key values across all digital_twins_endpoint_eventgrids"
  value       = [for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : v.eventgrid_topic_primary_access_key]
}
output "digital_twins_endpoint_eventgrids_eventgrid_topic_secondary_access_key" {
  description = "List of eventgrid_topic_secondary_access_key values across all digital_twins_endpoint_eventgrids"
  value       = [for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : v.eventgrid_topic_secondary_access_key]
}
output "digital_twins_endpoint_eventgrids_name" {
  description = "List of name values across all digital_twins_endpoint_eventgrids"
  value       = [for k, v in azurerm_digital_twins_endpoint_eventgrid.digital_twins_endpoint_eventgrids : v.name]
}


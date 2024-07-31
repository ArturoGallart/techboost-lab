output "azurerm_virtual_network_name" {
  value = azurerm_virtual_network.main.name
}

output "azurerm_virtual_network_id" {
  value = azurerm_virtual_network.main.id
}

output "azurerm_subnet_names" {
  description = "List of subnet names"
  value       = [for s in azurerm_subnet.subnet : s.name]
}

output "azurerm_subnet_ids" {
  description = "List of subnet IDs"
  value       = [for s in azurerm_subnet.subnet : s.id]
}

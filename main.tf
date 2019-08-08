provider "azurerm" {
subscription_id="3354308b-6548-4749-aac2-6b4cfbf2e6ed"
client_id="23e85f19-077a-4084-9544-9716a30da2bf"
client_secret="Fi+ww.5nQ27?AioMW5mfSfYZONA?9uN4"
tenant_id="154a555f-9dde-4aed-8873-eca8e68b38df"
}
resource "azurerm_resource_group" "kp_gp01" {
  name     = "kp_gp01"
  location = "East US"
}

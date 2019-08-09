provider "azurerm" {
subscription_id="3354308b-6548-4749-aac2-6b4cfbf2e6ed"
client_id="35d39492-2fe9-4ca9-aada-dbc3b879ab80"
client_secret="0joJRCNWP=+B.e@nH4xsDE27=CSv+58M"
tenant_id="154a555f-9dde-4aed-8873-eca8e68b38df"
}

resource "azurerm_resource_group" "kp_gp002" {
  name     = "kp_gp002"
  location = "eastus"
}

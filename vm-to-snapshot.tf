provider "azurerm" {
subscription_id="3354308b-6548-4749-aac2-6b4cfbf2e6ed"
client_id="938340bb-c097-4194-a3fd-f9974b800431"
client_secret="W**BQBD?qMV0G50xDcXp4PehB:z+QY5y"
tenant_id="154a555f-9dde-4aed-8873-eca8e68b38df"
}
resource "azurerm_resource_group" "kp_gp002" {
  name     = "kp_g002p"
  location = "East US"
}


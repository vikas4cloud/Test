provider "azurerm" {
subscription_id="3354308b-6548-4749-aac2-6b4cfbf2e6ed"
client_id="a7fd1f50-db6d-4503-b952-859d9faef1e9"
client_secret=":-NXJb/qd66U7OS+3P*T?nUN.CWS:4ow"
tenant_id="154a555f-9dde-4aed-8873-eca8e68b38df"
}

resource "azurerm_resource_group" "kp_gp002" {
  name     = "kp_gp002"
  location = "East US"
}


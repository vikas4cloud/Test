provider "azurerm" {
subscription_id="3354308b-6548-4749-aac2-6b4cfbf2e6ed"
client_id="23e85f19-077a-4084-9544-9716a30da2bf"
client_secret="Fi+ww.5nQ27?AioMW5mfSfYZONA?9uN4"
tenant_id="154a555f-9dde-4aed-8873-eca8e68b38df"
}
resource "azurerm_resource_group" "kp_gp" {
  name     = "kp_gp"
  location = "East US"
}
resource "azurerm_snapshot" "kp_gp" {
  name                = "snapshot_W-VM"
  location            = "${azurerm_resource_group.kp_gp.location}"
  resource_group_name = "${azurerm_resource_group.kp_gp.name}"
  create_option       = "Copy"
  source_uri          = "subscriptions/3354308b-6548-4749-aac2-6b4cfbf2e6ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/VM01_disk1_7e76e6b39da241fb8e1a6cd8f69c8a94"
}

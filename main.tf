provider "azurerm" {
subscription_id="3354308b-6548-4749-aac2-6b4cfbf2e6ed"
client_id="35d39492-2fe9-4ca9-aada-dbc3b879ab80"
client_secret="0joJRCNWP=+B.e@nH4xsDE27=CSv+58M"
tenant_id="154a555f-9dde-4aed-8873-eca8e68b38df"
}

resource "azurerm_resource_group" "kp_gp" {
  name     = "kp_gp"
  location = "eastus"
}
resource "azurerm_snapshot" "kp_gp" {
  name                = "snapshot_VM01"
  location            = "${azurerm_resource_group.kp_gp.location}"
  resource_group_name = "${azurerm_resource_group.kp_gp.name}"
  create_option       = "Copy"
  source_uri          = "subscriptions/3354308b-6548-4749-aac2-6b4cfbf2e6ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/VM01_disk1_589d699c52ad4851ba177868ca5449c8"
}

resource "azurerm_managed_disk" "kp_gp" {
  name = "snapshot-VM02"
  location = "eastus"
  resource_group_name = "${azurerm_resource_group.kp_gp.name}"
  storage_account_type = "Standard_LRS"
  create_option = "Copy"
  source_resource_id = "subscriptions/3354308b-6548-4749-aac2-6b4cfbf2e6ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/VM01_disk1_589d699c52ad4851ba177868ca5449c8"
  disk_size_gb = "30"
}

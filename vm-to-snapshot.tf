resource "azurerm_resource_group" "kp_gp" {
  name     = "kp_gp"
  location = "East US"
}
resource "azurerm_snapshot" "kp_gp" {
  name                = "snapshot_W-VM"
  location            = "${azurerm_resource_group.kp_gp.location}"
  resource_group_name = "${azurerm_resource_group.kp_gp.name}"
  create_option       = "Copy"
  source_uri          = "subscriptions/3354308b-6548-4749-aac2-6b4cfbf2e6ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/vm01_disk1_2e3097e68d6e41ca885316fd1f05ff10"
}

resource "azurerm_resource_group" "kp_gp" {
  name     = "kp_gp"
  location = "East US"
}
resource "azurerm_snapshot" "kp_gp" {
  name                = "snapshot_W-VM"
  location            = "${azurerm_resource_group.kp_gp.location}"
  resource_group_name = "${azurerm_resource_group.kp_gp.name}"
  create_option       = "Copy"
  source_uri          = "subscriptions/59566ed9-5683-4f3e-9064-c7edbfc550ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/vm01_disk1_7e420dc77946489b988353af136beea7"
}

    
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
resource "azurerm_snapshot" "kp_gp002" {
  name                = "snapshot_W-VM"
  location            = "${azurerm_resource_group.kp_gp002.location}"
  resource_group_name = "${azurerm_resource_group.kp_gp002.name}"
  create_option       = "Copy"
  source_uri          = "subscriptions/3354308b-6548-4749-aac2-6b4cfbf2e6ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/vm01_disk1_2e3097e68d6e41ca885316fd1f05ff10"
}

provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  tenant_id       = "${var.tenant_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
}

resource "azurerm_resource_group" "kp_gp" {
 name     = "${var.resource_group_name}"
 location = "${var.location}"
}

resource "azurerm_snapshot" "kp_gp" {
  name                = "${var.snapshot_name}"
  location            = "${azurerm_resource_group.*.location}"
  resource_group_name = "${azurerm_resource_group.*.name}"
  create_option       = "Copy"
  source_uri          = "${var.source_uri}"
}


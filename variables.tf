variable "resource_group_name" {
 type        = "string"
 description = "The name of resource group "
}

variable "location" {
 type        = "string"
 description = "Location "
}

#snapshot-os-disk

variable "azurerm_snapshot_name" {
 type        = "string"
 description = "The name of snapshot-os-disk name "
}

variable "location" {
 type        = "string"
 description = "Location "
}
variable "resource_group_name" {
 type        = "string"
 description = "The name of resource group "
}

variable "create_option" {
  default = "Copy"
}
variable "source_uri" {
  default = "subscriptions/3354308b-6548-4749-aac2-6b4cfbf2e6ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/VM01_disk1_589d699c52ad4851ba177868ca5449c8"
}

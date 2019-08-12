variable "subscription_id" {
  type        = "string"
  description = "Subscription id"
}

variable "tenant_id" {
  type        = "string"
  description = "Tenant id"
}

variable "client_id" {
  type        = "string"
  description = "Client id"
}

variable "client_secret" {
  type        = "string"
  description = "Client secret"
}

#resource group

variable "resource_group_name.*" {
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
  default = "/subscriptions/59566ed9-5683-4f3e-9064-c7edbfc550ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/vm02_disk1_97f778d2dae942f18e68713444645128"
}

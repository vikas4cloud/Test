variable "subscription_id" {
  description = "Subscription id"
  default = "3354308b-6548-4749-aac2-6b4cfbf2e6ed"  
}

variable "tenant_id" {
  
  description = "Tenant id"
  default     = "154a555f-9dde-4aed-8873-eca8e68b38df"
}

variable "client_id" {
  description = "Client id"
  default     = "35d39492-2fe9-4ca9-aada-dbc3b879ab80" 
}

variable "client_secret" {
 
  description = "Client secret"
  default     = "0joJRCNWP=+B.e@nH4xsDE27=CSv+58M"
}

#resource group

variable "resource_group_name" {
 description = "The name of resource group "
 default     = "kp_gp"
}

variable "location" {

 description = "Location "
 default     = "eastus"
}

## snapshot


variable "azurerm_snapshot_name" {
 
 description = "The name of snapshot-os-disk name "
 default     = "sanpshot-os-disk"
}

variable "create_option" {
  default = "Copy"
}
variable "source_uri" {
  default = "subscriptions/3354308b-6548-4749-aac2-6b4cfbf2e6ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/VM01_disk1_589d699c52ad4851ba177868ca5449c8"
}

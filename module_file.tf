locals {
  storagename = format("%s%s%s",var.env,var.customer,var.owner)
}

resource "azurerm_storage_account" "SA" {
#name = local.storagename
name = "${local.storagename}${var.sasuffix}"
account_tier = "Standard"
account_replication_type = var.account_replication_type
resource_group_name = var.resource_group_name
location = var.location
}

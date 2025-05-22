variable "storageaccoount_group" {
    type=map(any)
}

resource "azurerm_storage_account" "storageaccount" {
    for_each = var.storageaccoount_group
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

   
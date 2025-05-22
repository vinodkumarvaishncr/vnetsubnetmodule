module  "callgroup" {
    source="./module/resource"
    rg_names = var.rg_names
}

module  "vnetgroup" {
    depends_on =[module.callgroup]
    source="./module/vnet"
    vnet_group = var.vnet_group
}

module  "subnetgroup" {
    depends_on =[module.vnetgroup]
    source="./module/subnet"
    subnet_group = var.subnet_group
}

module  "stroagegroup" {
    depends_on =[module.callgroup]
    source="./module/storage"
    storageaccoount_group = var.storageaccoount_group
}
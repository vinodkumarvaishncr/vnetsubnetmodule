rg_names = {
    "rg1" = {
       name = "vinod_first"
        location = "east us"
    },
    "rg2" ={
        name = "vinod_second"
        location = "west us"
    }
}

vnet_group = {
  vnet1 = {
    name                = "vinod_vnet_first"
    location            = "east us"
    resource_group_name = "vinod-rg-main"
    address_space       = ["10.0.0.0/24"]
  }
}

subnet_group = {
  subnet1 = {
    name                = "vinod_subnet_first"
    resource_group_name = "vinod-rg-main"
    virtual_network_name = "vinod_vnet_first"
    address_space       = ["10.0.0.0/28"]       # First 16 IPs
  },
  subnet2 = {
    name                = "vinod_subnet_second"
    resource_group_name = "vinod-rg-main"
    virtual_network_name = "vinod_vnet_first"
    address_space       = ["10.0.0.16/28"] # Next 16 IPs
  }
}

storageaccoount_group = {
  storage1 = {
    name                = "vinodstoragefirst"
    location            = "east us"
    resource_group_name = "vinod-rg-main"
    },
    storage2 = {
    name                = "vinodstoragesecond"
    location            = "east us"
    resource_group_name = "vinod-rg-main"
    }
}
 
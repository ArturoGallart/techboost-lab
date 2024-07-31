resource_group_name = "rg-techboost-lab-eus2-01"
location            = "eastus2"
vnet_name           = "vnet-techboost-lab-eus2-01"
address_space       = ["10.0.0.0/16"]
subnets = [
  {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  },
  {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }
]
vnet_name_2     = "vnet-techboost-lab-eus2-02"
address_space_2 = ["10.10.0.0/16"]
subnets_2 = [
  {
    name           = "subnet3"
    address_prefix = "10.10.1.0/24"
  },
  {
    name           = "subnet4"
    address_prefix = "10.10.2.0/24"
  }
]

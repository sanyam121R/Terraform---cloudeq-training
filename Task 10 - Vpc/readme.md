Yes, you can use setproduct to iterate over both bucket_name and access_type:

locals {
  bucket_name = ["SRE", "Engg", "QA"]
  access_type = ["Private", "Public" ]
  
  my_product = {for val in setproduct(local.bucket_name, local.access_type):
                "${val[0]}-${val[1]}" => val}  
}


resource "oci_objectstorage_bucket" "test_bucket" {
        for_each = local.my_product 
        compartment_id = var.compartment_id
        name = each.value[0]
        namespace = var.bucket_namespace
        access_type = each.value[1]
}



--------------
|  sj  | dr. |
--------------
| tot  | bg  |
--------------



public_subnet = ["123","23"]
private_subnet = ["12","32"]


# variables.tf
variable "nsg_rules" {
  description = "list of maps consisting of nsg rules"
  type = list(object
    ({
        access                       = string
        destination_address_prefixes = list(string)
        destination_port_ranges      = list(string)
        direction                    = string
        name                         = string
        priority                     = number
        protocol                     = string
        source_address_prefixes      = list(string)
        source_port_range            = string
    }))
  
  default = [
    {
      access                       = "Deny"
      destination_address_prefixes = ["10.10.1.0/24", "10.10.2.0/24"]
      destination_port_ranges      = ["80"]
      direction                    = "Inbound"
      name                         = "DenyHTTPInbound"
      priority                     = 100
      protocol                     = "*"
      source_address_prefixes      = ["10.0.0.0/24"]
      source_port_range            = "*"
    },
    {
      access                       = "Deny"
      destination_address_prefixes = ["10.10.10.0/24", "10.10.11.0/24"]
      destination_port_ranges      = ["22"]
      direction                    = "Inbound"
      name                         = "DenySSHInbound"
      priority                     = 200
      protocol                     = "*"
      source_address_prefixes      = ["10.0.0.0/24"]
      source_port_range            = "*"
    }
  ]
}


resource "azurerm_network_security_rule" "nsg_rules" {
  for_each = { for rule in var.nsg_rules : rule.name => rule }
 
  access                       = each.value.access
  destination_address_prefixes = each.value.destination_address_prefixes
  destination_port_ranges      = each.value.destination_port_ranges
  direction                    = each.value.direction
  name                         = each.value.name
  network_security_group_name  = azurerm_network_security_group.nsg.name
  priority                     = each.value.priority
  protocol                     = each.value.protocol
  resource_group_name          = azurerm_resource_group.rg.name
  source_address_prefixes      = each.value.source_address_prefixes
  source_port_range            = each.value.source_port_range
}
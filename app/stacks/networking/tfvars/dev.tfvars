// *** Resorce Group Values ***
resource_group_name = "rg-networking-dev-canadacentral"
location = "canadacentral"
tags = {
 
}
// *** Virtual Network Values ***
virtual_network_name = "vnet-d-cc"
dns_servers = []
address_space = "172.29.0.0/16"
address_spaces = []
vnet_tags = {

}
// *** Subnet Values ***
subnets = {

  "snet-aks-d-cc" = {
    address_prefixes = ["172.29.16.0/20"]
    enforce_private_link_endpoint_network_policies = true
    nsg = {
    name                       = "nsg_vnet-spk-d-cc_snet-aks-d-cc"
    }
    security_rule = {
    name                       = ""
    priority                   = ""
    direction                  = ""
    access                     = ""
    protocol                   = ""
    source_port_range          = ""
    destination_port_range     = ""
    source_address_prefix      = ""
    destination_address_prefix = ""
    }
  }
}
# Create new External Network

resource "vcd_external_network" "extnet" {
  name        = var.extnet_name
  description = var.extnet_description

    vsphere_network {
    name    = "DPortGroup"
    type    = "DV_PORTGROUP"
    vcenter = var.extnet_vcenter
  }

  ip_scope {
    gateway    = var.extnet_gw
    netmask    = var.extnet_mask
    dns1       = var.extnet_dns1
    dns2       = var.extnet_dns2
    dns_suffix = var.extnet_suffix

    static_ip_pool {
      start_address = var.extnet_ip_pool_start
      end_address   = var.extnet_ip_pool_end
    }
  }
}

# Create new vCloud Org
resource "vcd_org" "org-name" {
  name                = var.org_name
  full_name           = var.org_full_name
  description         = var.org_description
  is_enabled          = "true"
  delete_recursive    = "true"
  delete_force        = "true"
  can_publish_catalogs = "false"
  depends_on = [vcd_external_network.extnet]
}

# Create new VDC

resource "vcd_org_vdc" "vdc-name" {
  name        = var.vdc_name
  description = var.vdc_description
  org         = var.org_name

  allocation_model = var.vdc_alloc_model
  network_pool_name = var.vdc_net_pool
  provider_vdc_name = var.vdc_pvdc_name

  compute_capacity {
    cpu {
      allocated = 0
    }
    memory {
      allocated = 0
    }
  }

  storage_profile {
    name = var.vdc_storage_name
    limit = var.vdc_storage_limit
    default = true
  }

  cpu_guaranteed = 0
  memory_guaranteed = 0
  cpu_speed = 2000
  network_quota = 10
  enabled = true
  enable_thin_provisioning = true
  enable_fast_provisioning = false
  delete_force = true
  delete_recursive = true 

  depends_on = [vcd_org.org-name]
}

 # Org External Network
 resource "vcd_network_direct" "netdirect" {
   org = var.org_name
   vdc = var.vdc_name
   name = var.extnet_name
   external_network = "Dijitalisyerim_VLAN"
   depends_on = [vcd_org_vdc.vdc-name]
 }

 # Org vApp - Servers
 resource "vcd_vapp" "vapp" {
   name = var.vapp_name
   description = var.vapp_description
   org = var.org_name
   vdc = var.vdc_name
   pover_on = true
   depends_on = [vcd_network_direct.netdirect]
   
 }


 resource "vcd_vapp_vm" "vm" {
  vapp_name     = var.vapp_name
  name          = var.vapp_vm_name
  computer_name = var.vapp_computer_name
  catalog_name  = "App"
  template_name = "Win2019Std_Splalic_NonMngmt_100322"
  memory        = 2048
  cpus          = 1

network {
      name = var.extnet_name
      type = "org"
      ip = "81.8.0.71"
      ip_allocation_mode = "MANUAL"
      is_primary = true
  }


}

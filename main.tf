# Create new External Network

resource "vcd_external_network" "extnet" {
  name        = var.extnet_name
  description = var.extnet_description

    vsphere_network {
    name    = var.dvport_name
    type    = "DV_PORTGROUP"
    vcenter = var.vcenter_name
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
  can_publish_catalogs = "true"
  depends_on = [vcd_external_network.extnet]
}

# Create new VDC

resource "vcd_org_vdc" "vdc-name" {
  name        = var.vdc_name
  description = var.vdc_description
  org         = var.org_name

  allocation_model = "AllocationVApp"
  network_pool_name = var.vdc_net_pool
  provider_vdc_name = var.vdc_pvdc_name

  compute_capacity {
    cpu {
      allocated = var.org_cp_val
    }
    memory {
      allocated = var.org_mem_val
    }
  }

  storage_profile {
    name = var.vdc_storage_name
    limit = var.vdc_storage_limit
    default = true
  }
  vm_quota = var.vm_quota
  cpu_guaranteed = 0
  memory_guaranteed = 0
  cpu_speed = 2000
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
   external_network = var.extnet_name
   depends_on = [vcd_org_vdc.vdc-name]
 }

 # Org vApp - Servers
 resource "vcd_vapp" "vapp" {
   name = var.vapp_name
   description = var.vapp_description
   org = var.org_name
   vdc = var.vdc_name
   power_on = true
   depends_on = [vcd_network_direct.netdirect]
   
 }

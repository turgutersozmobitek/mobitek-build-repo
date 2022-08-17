
variable "vcenter_name" {
    type        = string
    default     = "list"
    description = "vCenter Name"
}

variable "cd_username" {
    type        = string
    description = "CloudDirector UserName"
}
variable "cd_password" {
    type        = string
    description = "CloudDirector Password"
}

variable "cd_vdcadres" {
    type        = string
    description = "CloudDirector Adresi"
}


variable "org_name" {
    type        = string
    description = "Organizasyon İsmi"
}

variable "org_full_name" {
    type        = string
    description = "Organizasyon Tam İsmi"
}

variable "org_description" {
    type        = string
    description = "Organizasyon Açıklaması"
}

# vCloud Director Organization VDC Variables
variable "vdc_pvdc_name" {
    type        = string
    default     = "list"
    description = "Provider VDC Adı:"
}

variable "vdc_name" {
    type        = string
    description = "VDC Name"

}

variable "vdc_description" {
    type        = string
    description = "VDC Description"
}


variable "org_cp_val" {
    type        = string
    default     = "list"
    description = "VDC Cpu Kota"    
}    

variable "org_mem_val" {
    type        = string
    default     = "list"   
    description = "VDC Memory Kota"    
}

variable "vm_quota" {
    type        = string
    description = "VM Kotası"  
}
    
variable "vdc_storage_name" {
    type        = string
    default     = "list"
    description = "VDC Storage Policy"
}
variable "vdc_storage_limit" {
    type        = string
    description = "VDC Storage Limit"
}

variable "vdc_net_pool" {
    type        = string
    default     = "list"
    description = "VDC Network Pool" 
}
    

# vCloud Director External Network

variable "dvport_name" {
    type        = string
    description = "vCenter VLAN Adı"
    
}
    
variable "extnet_name" {
    type        = string
    description = "External Network Name"
}
variable "extnet_description" {
    type        = string
    description = "External Network Description"
}
variable "extnet_gw" {
    type        = string
    description = "External Network Gateway"
}
variable "extnet_mask" {
    type        = string
    description = "External Network Mask"
}
variable "extnet_dns1" {
    type        = string
    description = "External Network DNS1"
}
variable "extnet_dns2" {
    type        = string
    description = "External Network DNS2"
}
variable "extnet_suffix" {
    type        = string
    description = "External Network DNS Suffix"
}
variable "extnet_ip_pool_start" {
    type        = string
    description = "External Network IP Pool Start Address"
}
variable "extnet_ip_pool_end" {
    type        = string
    description = "External Network IP Pool End Address"
}

variable "vapp_name" {
    type        = string
    description = "vApp Uygulama adını giriniz."
}
variable "vapp_description" {
    type        = string
    description = "vApp Açıklamasını giriniz."
}


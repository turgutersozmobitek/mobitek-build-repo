
# vCloud Director Organization Variables
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
variable "vdc_alloc_model" {
    type        = string
    default     = "AllocationVApp"
    description = "VDC Allocation Model"
}
variable "vdc_net_pool" {
        type        = string
        default     = "General"
        description = "VDC Network Pool"
}
variable "vdc_pvdc_name" {
        type        = string
        default     = "Dijitalisyerim"
        description = "VDC Provider VDC Name"
}
variable "vdc_description" {
    type        = string
    description = "VDC Description"
}
variable "vdc_name" {
    type        = string
    description = "VDC Name"
}
variable "vdc_storage_name" {
        type        = string
        default     = "*"
        description = "VDC Storage Policy"
}
variable "vdc_storage_limit" {
        type        = string
        description = "VDC Storage Limit"
}


# vCloud Director External Network
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
    default     = "81.8.0.125"
    description = "External Network Gateway"
}
variable "extnet_mask" {
    type        = string
    default     = "255.255.255.0"
    description = "External Network Mask"
}
variable "extnet_dns1" {
    type        = string
    default     = "1.1.1.1"
    description = "External Network DNS1"
}
variable "extnet_dns2" {
    type        = string
    default     = "1.0.0.1"   
    description = "External Network DNS2"
}
variable "extnet_suffix" {
    type        = string
    default     = ""
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



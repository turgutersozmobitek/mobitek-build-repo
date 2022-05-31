# vCloud Director Connection Variables
variable "vcd_user" {
    type        = string
    default     = "administrator"
    description = "vCloud user"
}

variable "vcd_pass" {
    type        = string
    default     = "Mob12345!"
    description = "vCloud pass"
}

variable "vcd_url" {
    type        = string
    default     = "https://81.8.0.53/api"
    description = "vCloud url"
}

variable "vcd_max_retry_timeout" {
    type        = string
    default     = "60"
    description = "vCloud max retry timeout"
}

variable "vcd_allow_unverified_ssl" {
    type        = string
    default     = "true"
    description = "vCloud allow unverified ssl"
}

# vCloud Director Organization Variables
variable "org_name" {
    type        = string
    description = "Organization Name"
}

variable "org_full_name" {
    type        = string
    description = "Organization Full Name"
}

variable "org_description" {
    type        = string
    description = "Organization Description"
}

# vCloud Director Organization VDC Variables
variable "vdc_alloc_model" {
    type        = string
    default     = "AllocationVApp"
    description = "VDC Allocation Model"
}
variable "vdc_net_pool" {
        type        = string
        description = "VDC Network Pool"
}
variable "vdc_pvdc_name" {
        type        = string
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
variable "extnet_vcenter" {
    type        = string
    description = "External Network vCenter Server"
}


terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.6.0"
    }
  }
}
# Connect VMware vCloud Director Provider
provider "vcd" {
  user                 =  var_cd_username
  password             =  var_cd_password
  org                  = "System"
  url                  = "https://81.8.0.53/api"
  max_retry_timeout    = "60"
  allow_unverified_ssl = "true"
}

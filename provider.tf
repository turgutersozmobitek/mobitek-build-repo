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
  user                 = "timucin.devirmis"
  password             =  "X9stFZsQpC4w!a"
  org                  = "System"
  url                  = "https://31.145.174.203/api"
  max_retry_timeout    = "60"
  allow_unverified_ssl = "true"
}

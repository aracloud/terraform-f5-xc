// definition of all needed objects in F5XC

// tenant
variable "xc_tenant" {
  type = string
  default = "<tenant-id>"
}

// namespace
variable "xc_namespace_user" {
  type = string
  default = "<user_namespace>"
}

// namespace system (tenant wide)
variable "xc_namespace_system" {
  type = string
  default = "system"
}

// dns zone or subzone (delegation)
variable "xc_dns_zone" {
  type = string
  default = "<dns_zone>"
}

// dns zone
variable "xc_dns_zone_ns1" {
  type = string
  default = "<ns1>"
}

// dns zone
variable "xc_dns_zone_ns2" {
  type = string
  default = "<ns2>"
}

// dns subdomain (if needed)
variable "xc_dns_subdomain" {
  type = string
  default = "<subdomain>"
}

// a-record
variable "xc_a_record_name" {
  type = string
  default = "<name>"
}

// a-record
variable "xc_a_record_ip" {
  type = string
  default = "<tenant_ip>"
}

// ttl a-record
variable "xc_a_record_ttl" {
  type = string
  default = "300"
}

// ttl ns-record
variable "xc_ns_record_ttl" {
  type = string
  default = "10800"
}

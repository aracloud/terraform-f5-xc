// definition of all needed objects in F5XC

// tenant
variable "xc_tenant" {
  type = string
  default = "f5-emea-ent-bceuutam"
}

// namespace
variable "xc_namespace_user" {
  type = string
  default = "a-arquint"
}

// namespace system (tenant wide)
variable "xc_namespace_system" {
  type = string
  default = "system"
}

// dns zone
variable "xc_dns_zone" {
  type = string
  default = "xctest.f5demo.ch"
}

// dns zone
variable "xc_dns_zone_ns1" {
  type = string
  default = "ns1.f5clouddns.com"
}

// dns zone
variable "xc_dns_zone_ns2" {
  type = string
  default = "ns2.f5clouddns.com"
}

// dns subdomain
variable "xc_dns_subdomain" {
  type = string
  default = "xctest"
}

// a-record
variable "xc_a_record_name" {
  type = string
  default = "www3"
}

// a-record
variable "xc_a_record_ip" {
  type = string
  default = "72.19.3.187"
}

// definition of all needed objects in F5XC

// tenant
variable "xc_tenant" {
  type = string
  default = "f5-channel-rwtqhrvn"
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
  default = "xcchannel.f5demo.ch"
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
  default = "xcchannel"
}

// a-record
variable "xc_a_record_name" {
  type = string
  default = "www3"
}

// a-record
variable "xc_a_record_ip" {
  type = string
  default = "185.56.152.98"
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

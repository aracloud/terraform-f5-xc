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

// application full qualified domain name
variable "xc_fqdn_app_sub" {
  type = string
  default = "www3.xcemea.f5demo.ch"
}

// application full qualified domain name
variable "xc_fqdn_app_top" {
  type = string
  default = "www3.f5demo.ch"
}
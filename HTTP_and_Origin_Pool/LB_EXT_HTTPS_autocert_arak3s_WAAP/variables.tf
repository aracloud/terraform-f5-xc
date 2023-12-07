// definition of all needed objects in F5XC

// tenant
variable "xc_tenant" {
  type = string
  default = "f5-emea-ent-bceuutam"
}

// namespace
variable "xc_namespace" {
  type = string
  default = "a-arquint"
}

// pool name
variable "xc_origin_pool" {
  type = string
  default = "op-ip-arak3s"
}

// loadbalancer
variable "xc_loadbalancer" {
  type = string
  default = "lb-https-tf-arak3s"
}

// backend application
variable "xc_k3s_svc" {
  type = string
  default = "dvwa-ui.dvwa"
}

variable "xc_pub_app_port" {
  type = string
  default = "80"
}

variable "xc_pub_app_no_tls" {
  type = string
  default = "true"
}

// waf policy 
variable "xc_wafpol_name" {
  type = string
  default = "waap-tf-arak3s"
}

// application full qualified domain name
variable "xc_fqdn_app" {
  type = string
  default = "arak3s.emea-ent.f5demos.com"
}
// definition of all needed objects in F5XC


// tenant
variable "xc_tenant" {
  type = string
  default = "f5-emea-ent-bceuutam"
}

variable "xc_tenant_site" {
  type = string
  default = "ara-swiss-ce1"
}

// namespace
variable "xc_namespace" {
  type = string
  default = "a-arquint"
}

// pool name
variable "xc_origin_pool" {
  type = string
  default = "op-ip-docker-dvwa"
}

// pool member backend ip address
variable "xc_origin_ip1" {
  type = string
  default = "192.168.2.114"
}

// loadbalancer
variable "xc_loadbalancer" {
  type = string
  default = "lb-https-tf-docker-dvwa"
}

// backend application
variable "xc_pub_app" {
  type = string
  default = "demo-app.amer.myedgedemo.com"
}

variable "xc_pub_app_port" {
  type = string
  default = "8081"
}

variable "xc_pub_app_no_tls" {
  type = string
  default = "true"
}

// waf policy 
variable "xc_wafpol_name" {
  type = string
  default = "waap-tf-docker-dvwa"
}

// application full qualified domain name
variable "xc_fqdn_app" {
  type = string
  default = "dockerdvwa.xcemea.f5demo.ch"
}

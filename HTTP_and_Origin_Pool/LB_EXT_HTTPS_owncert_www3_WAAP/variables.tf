// definition of all needed objects in F5XC

// namespace
variable "xc_namespace" {
  type = string
  default = "a-arquint"
}

// pool name
variable "xc_origin_pool" {
  type = string
  default = "op-ip-www3"
}

// loadbalancer
variable "xc_loadbalancer" {
  type = string
  default = "lb-https-tf-www3"
}

// backend application
variable "xc_pub_app" {
  type = string
  default = "demo-app.amer.myedgedemo.com"
  //default = "app.ndee.me"
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
  default = "waap-tf-www3"
}

// application full qualified domain name
variable "xc_fqdn_app" {
  type = string
  default = "www3.xcemea.f5demo.ch"
}

// tsl cert
variable "xc_tls_cert" {
  type = string
  default = "www3-f5demo-ch"
}
// definition of all needed objects in F5XC

// namespace
variable "xc_namespace" {
  type = string
  default = "a-arquint"
}

// pool name
variable "xc_origin_pool" {
  type = string
  default = "op-ip-arademo"
}

// loadbalancer
variable "xc_loadbalancer" {
  type = string
  default = "lb-https-tf-arademo"
}

// backend application
variable "xc_pub_app" {
  type = string
  default = "demo-app.amer.myedgedemo.com"
}

variable "xc_pub_app_port" {
  type = string
  default = "80"
}

variable "xc_healthcheck_web" {
  type = string
  default = "health-tf-web-arademo"
}

variable "xc_pub_app_no_tls" {
  type = string
  default = "true"
}

// waf policy 
variable "xc_wafpol_name" {
  type = string
  default = "waap-tf-arademo"
}

// application full qualified domain name
variable "xc_fqdn_app" {
  type = string
  default = "arademo.xcemea.f5demo.ch"
}
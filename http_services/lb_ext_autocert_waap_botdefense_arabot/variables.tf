// definition of all needed objects in F5XC

// namespace
variable "xc_namespace" {
  type = string
  default = "a-arquint"
}

// pool name
variable "xc_origin_pool" {
  type = string
  default = "op-ip-internal-bot"
}

// loadbalancer
variable "xc_loadbalancer" {
  type = string
  default = "lb-https-tf-ara-bot"
}

// backend application
variable "xc_pub_app" {
  type = string
  default = "sentence.emea.f5se.com"
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
  default = "waap-demo-tf-ara-bot"
}

// application full qualified domain name
variable "xc_fqdn_app" {
  type = string
  default = "arabot.emea-ent.f5demos.com"
}
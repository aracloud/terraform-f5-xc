//variable "api_cert" {
//  type = string
//  default = "/PATH/certificate.cert"
//}

//variable "api_key" {
//  type = string
//  default = "/PATH/private_key.key"
//}

//variable "api_url" {
//  type = string
//  default = "https://f5-emea-ent.console.ves.volterra.io/api"
//}

variable "xc_origin_pool" {
  type = string
  default = "op-ip-internal"
}

variable "xc_namespace" {
  type = string
  default = "a-arquint"
}

variable "xc_pub_app" {
  type = string
  default = "sentence.emea.f5se.com"
}

variable "xc_wafpol_name" {
  type = string
  default = "waap-demo-tf-ara"
}

variable "xc_fqdn_app" {
  type = string
  default = "arawaap.emea-ent.f5demos.com"
}
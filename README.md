# Terraform plan examples for Volterra

## Overview
In this repository, you will find Terraform plan examples for Volterra deployments.

## Getting Started
The Volterra modules are available here : https://registry.terraform.io/providers/volterraedge/volterra/latest

![alt text][logo]

[logo]: https://raw.githubusercontent.com/f5devcentral/terraform-volterra/main/terraform_screen.png "Terraform"

## Quick Demo

[![Alt text](https://img.youtube.com/vi/M2TGAFAbsSc/0.jpg)](https://www.youtube.com/watch?v=M2TGAFAbsSc)

## Pre-Requirements
Have a Volterra API Certificate. Please see this page for the API Certificate generation: https://volterra.io/docs/how-to/user-mgmt/credentials

Extract the certificate and the key from the .p12:

```
    openssl pkcs12 -info -in certificate.p12 -out private_key.key -nodes -nocerts
    openssl pkcs12 -info -in certificate.p12 -out certificate.cert -nokeys
```


# Terraform plan examples for Volterra

## Overview
In this repository, you will find Terraform plan examples for Volterra deployments.

## Getting Started
The Volterra modules are available here : https://registry.terraform.io/providers/volterraedge/volterra/latest


## Quick Demo

[![Alt text](https://img.youtube.com/vi/M2TGAFAbsSc/0.jpg)](https://www.youtube.com/watch?v=M2TGAFAbsSc)

## Pre-Requirements
Have a Volterra API Certificate. Please see this page for the API Certificate generation: https://volterra.io/docs/how-to/user-mgmt/credentials

Than "export" the env variables accordingly:

export VES_P12_PASSWORD=<P12_cert_password>
export VOLT_API_URL=https://<F5_Distrubuted_Cloud_URL>/api
export VOLT_API_P12_FILE=/export/gitrepo/terraform-volterra/api-key/api-creds.p12

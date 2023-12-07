resource "volterra_dns_zone" "example" {
  name      = "acmecorp-web"
  namespace = var.xc_namespace_system

  // One of the arguments from this list "primary secondary" must be set

  primary {

    default_rr_set_group {
      ttl = "3600"
      ns_record {
        name = var.xc_dns_subdomain
        values = [
          var.xc_dns_zone_ns1,
          var.xc_dns_zone_ns2
        ]
      }
    }

    dnssec_mode {
      // One of the arguments from this list "enable disable" must be set
      disable = true
    }

    rr_set_group {
      metadata {
        description = "Virtual Host for f5demo website"
        disable     = true
        name        = "f5demo-web"
      }

      rr_set {
        ttl = "300"
        // One of the arguments from this list "alias_record cname_record mx_record naptr_record aaaa_record srv_record lb_record loc_record sshfp_record cert_record dlv_record caa_record ptr_record txt_record cds_record eui48_record eui64_record tlsa_record a_record ns_record ds_record afsdb_record" must be set
        a_record {
          name = var.xc_a_record_name
          values = [
            var.xc_a_record_ip
          ]
        }
      }
    }

    // One of the arguments from this list "default_soa_parameters soa_parameters" must be set
    default_soa_parameters = true
  }
}
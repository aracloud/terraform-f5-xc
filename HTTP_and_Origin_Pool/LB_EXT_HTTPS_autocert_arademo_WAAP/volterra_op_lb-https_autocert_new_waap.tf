//Definition of the Origin Pool
resource "volterra_origin_pool" "xc_origin_pool" {
  name      = var.xc_origin_pool
  namespace = var.xc_namespace
 
   origin_servers {

    public_name {
      dns_name = var.xc_pub_app
    }

    labels = {
    }
  }

  no_tls = var.xc_pub_app_no_tls
  port = var.xc_pub_app_port

  endpoint_selection     = "LOCALPREFERED"
  loadbalancer_algorithm = "LB_OVERRIDE"
  healthcheck {
    name = var.xc_healthcheck_web
    namespace = var.xc_namespace
  }
}

//Definition of the healthcheck
resource "volterra_healthcheck" "xc_healtcheck_web" {
  name      = var.xc_healtcheck_web
  namespace = var.xc_namespace 

  // One of the arguments from this list "dns_proxy_icmp_health_check http_health_check tcp_health_check dns_proxy_tcp_health_check dns_proxy_udp_health_check dns_health_check" must be set

  http_health_check {
    expected_status_codes = ["200"]

    // One of the arguments from this list "use_origin_server_name host_header" must be set
    use_origin_server_name = true
    path                   = "/"
    use_http2              = false
  }

  healthy_threshold   = 3
  interval            = 15
  timeout             = 3
  unhealthy_threshold = 1
}

//Definition of the WAAP Policy
resource "volterra_app_firewall" "waap-tf" {
  name      = var.xc_wafpol_name
  namespace = var.xc_namespace

  // One of the arguments from this list "allow_all_response_codes allowed_response_codes" must be set
  allow_all_response_codes = true
  // One of the arguments from this list "default_anonymization custom_anonymization disable_anonymization" must be set
  default_anonymization = true
  // One of the arguments from this list "use_default_blocking_page blocking_page" must be set
  use_default_blocking_page = true
  // One of the arguments from this list "default_bot_setting bot_protection_setting" must be set
  default_bot_setting = true
  // One of the arguments from this list "default_detection_settings detection_settings" must be set
  default_detection_settings = true
  // One of the arguments from this list "use_loadbalancer_setting blocking monitoring" must be set
  use_loadbalancer_setting = true
  // Blocking mode - optional - if not set, policy is in MONITORING
  blocking = true
}

//Definition of the Load-Balancer
resource "volterra_http_loadbalancer" "lb-https-tf" {
  depends_on = [volterra_origin_pool.xc_origin_pool]
  //Mandatory "Metadata"
  name      = var.xc_loadbalancer
  //Name of the namespace where the origin pool must be deployed
  namespace = var.xc_namespace
  //End of mandatory "Metadata" 
  //Mandatory "Basic configuration" with Auto-Cert 
  domains = [var.xc_fqdn_app]
  https_auto_cert {
    add_hsts = true
    http_redirect = true
    no_mtls = true
    enable_path_normalize = true
    tls_config {
        default_security = true
      }
  }
  default_route_pools {
      pool {
        name = var.xc_origin_pool
        namespace = var.xc_namespace
      }
      weight = 1
  }
  //Mandatory "VIP configuration"
  advertise_on_public_default_vip = true
  //End of mandatory "VIP configuration"
  //Mandatory "Security configuration"
  no_service_policies = true
  no_challenge = true
  disable_rate_limit = true
  //WAAP Policy reference, created earlier in this plan - refer to the same name
  app_firewall {
    name = var.xc_wafpol_name
    namespace = var.xc_namespace
  }
  multi_lb_app = true
  user_id_client_ip = true
  //End of mandatory "Security configuration"
  //Mandatory "Load Balancing Control"
  source_ip_stickiness = true
  //End of mandatory "Load Balancing Control"
}

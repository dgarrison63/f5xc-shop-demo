variable "api_url" {
  default = "https://f5-bd.console.ves.volterra.io/api"
}

variable "api_p12_file" {
  default = "f5-bd.console.ves.volterra.io.api-creds"
}

variable "base" {
  default = "demo-app"
}

variable "app_fqdn" {
  default = "demoshop.xc.f5demo.net"
}

variable "spoke_site_selector" {
  default = ["ves.io/siteName in (ves-io-ny8-nyc, ves-io-wes-sea)"]
}

variable "hub_site_selector" {
  default = ["ves.io/siteName in (ves-io-dc12-ash)"]
}

variable "utility_site_selector" {
  default = ["ves.io/siteName in (ves-io-dc12-ash)"]
}

variable "cred_expiry_days" {
  default = 89
}

variable "registry_server" {
  default = "ghcr.io/dgarrisonf5"
}

variable "registry_config_json" {
  default     = "ewoJImF1dGhzIjogewoJCSJnaGNyLmlvIjoge30KCX0sCgkiY3JlZHNTdG9yZSI6ICJvc3hrZXljaGFpbiIKfQ=="
  description = "registry config data string in type kubernetes.io/dockerconfigjson"
}

/*
Optional Functionality
*/
variable "enable_bot_defense" {
  default = false
}

variable "bot_defense_region" {
  default = "US"
}

variable "enable_synthetic_monitors" {
  default = false
}

variable "enable_client_side_defense" {
  default = false
}
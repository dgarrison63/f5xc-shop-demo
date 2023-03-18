variable "api_url" {
  default = "https://<tenant name>.console.ves.volterra.io/api"
}

# name of the xc api p12 certificate in the creds directory
# you will also have to set the environment variable VES_P12_PASSWORD to the cert password
variable "api_p12_file" {
  default = "<name of p12 file in the creds directory>"
}

# base is used for the two namespaces that are created
variable "base" {
  default = "<base name>"
}

# dns name for the load balancer for the application frontend
variable "app_fqdn" {
  default = "<app fqdn>"
}

variable "spoke_site_selector" {
  default = "ves.io/siteName in (ves-io-dc12-ash)"
}

variable "hub_site_selector" {
  default = "ves.io/siteName in (ves-io-dc12-ash)"
}

variable "utility_site_selector" {
  default = "ves.io/siteName in (ves-io-dc12-ash)"
}

variable "cred_expiry_days" {
  default = 89
}

# name of the registry server to pull any containers that aren't from gcr.io
variable "registry_server" {
  default = "<container repo server  name>"
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
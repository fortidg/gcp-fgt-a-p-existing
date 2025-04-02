variable "project" {}
variable "region" {}
variable "zone" {}
variable "zone2" {}

variable "prefix" {}

# FortiGates
variable "fortigate_machine_type" {}
variable "fortigate_vm_image" {}

variable "fortigate_license_files" {}

variable "fgt_username" {
  type        = string
  default     = ""
  description = "FortiGate Username"
}
variable "fgt_password" {
  type        = string
  default     = ""
  description = "FortiGate Password"
}
variable "admin_port" {}

# debug
variable "enable_output" {
  type        = bool
  default     = true
  description = "Debug"
}

variable "healthcheck_port" {
  type        = number
  default     = 8008
  description = "Port used for LB health checks"
}

variable "untrust_subnet1_name" {
  type        = string
  description = "name of the untrust subnet"
}

variable "trust_subnet1_name" {
  type        = string
  description = "name of the trust subnet"
}
variable "ha_subnet1_name" {
  type        = string
  description = "name of the ha subnet"
}

variable "ha_netmask" {
  type        = string
  description = "netmask of the ha subnet"
  default     = "255.255.255.0"
}

variable "flex_tokens" {
  type        = list(string)
  default     = ["", ""]
  description = "List of FortiFlex tokens to be applied during bootstrapping"
}

variable "license_type" {
  type        = string
  default     = "flex"
  description = "License type: flex or byol"
}
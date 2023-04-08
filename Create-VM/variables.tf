variable "vsphere_user" {
  description = "Username for vSphere connection."
  default = "Your Username"
}

variable "vsphere_password" {
  description = "Password for vSphere connection."
  default = "Your Password"
}

variable "vsphere_server" {
  description = "vSphere server IP address or DNS name."
  default = "Your vCenter URL"
}

variable "vm_count" {
  description = "Number of virtual machines to create."
  default     = 2
}

variable "vm_prefix" {
  description = "Prefix for the virtual machine names."
  default     = "vm"
}

variable "vm_cpu" {
  description = "Number of CPUs for the virtual machines."
  default     = 2
}

variable "vm_mem" {
  description = "Amount of memory (in MB) for the virtual machines."
  default     = 4096
}

variable "vm_disk" {
  description = "Size (in GB) of the virtual machine disk."
  default     = 20
}

provider "vsphere" {
  user           = "${var.vsphere_user}"
  password       = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
    allow_unverified_ssl = true
}

module "Create-VM" {
  source = "./module/Create-VM"
  count  = "${var.vm_count}"

  vm_name = "${format("%s-%02d", var.vm_prefix, count.index + 1)}"
  vm_cpu  = "${var.vm_cpu}"
  vm_mem  = "${var.vm_mem}"
  vm_disk = "${var.vm_disk}"
}

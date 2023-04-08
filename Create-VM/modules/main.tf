resource "vsphere_virtual_machine" "Create-VM" {
  name             = var.vm_name
  num_cpus         = var.vm_cpu
  memory           = var.vm_mem
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id

  disk {
    label            = "disk0"
    size             = var.vm_disk
    thin_provisioned = true
  }

  network_interface {
    network_id = data.vsphere_network.network.id
  }
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.vsphere_cluster
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
data "vsphere_datastore" "datastore" {
  name          = var.vsphere_datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_datacenter" "datacenter" {
  name = var.vsphere_datacenter
}

data "vsphere_network" "network" {
  name          = var.vsphere_network
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


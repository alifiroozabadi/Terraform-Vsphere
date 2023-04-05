# Terraform vSphere Virtual Machine Module
### This module creates a virtual machine in a vSphere environment. You can use this module to create one or more virtual machines with the same configuration.

## Usage
Here's an example of how you can use this module:


    module "vm1" {
      source            = "git::"https://github.com/Aria-Git/Terraform-Vsphere.git)"
      vsphere_user      = "user@vsphere.local"
      vsphere_password  = "password"
      vsphere_server    = "192.168.1.100"
      vsphere_datacenter = "datacenter"
      vsphere_datastore = "datastore1"
      vsphere_cluster   = "cluster1"
      vsphere_network   = "network1"
      vsphere_name      = "vm1"
      vsphere_num_cpus  = 2
      vsphere_memory    = 4096
      vsphere_size      = 20
    }

    module "vm2" {
      source            = "git::"https://github.com/Aria-Git/Terraform-Vsphere.git)"
      vsphere_user      = "user@vsphere.local"
      vsphere_password  = "password"
      vsphere_server    = "192.168.1.100"
      vsphere_datacenter = "datacenter"
      vsphere_datastore = "datastore1"
      vsphere_cluster   = "cluster1"
      vsphere_network   = "network1"
      vsphere_name      = "vm2"
      vsphere_num_cpus  = 4
      vsphere_memory    = 8192
      vsphere_size      = 40
    }

## Inputs
This module accepts the following inputs:

vsphere_user - (Required) The username for vSphere authentication.
vsphere_password - (Required) The password for vSphere authentication.
vsphere_server - (Required) The vSphere server IP address or hostname.
vsphere_datacenter - (Required) The name of the datacenter where the virtual machine will be created.
vsphere_datastore - (Required) The name of the datastore where the virtual machine will be created.
vsphere_cluster - (Required) The name of the cluster where the virtual machine will be created.
vsphere_network - (Required) The name of the network where the virtual machine will be connected.
vsphere_name - (Required) The name of the virtual machine to be created.
vsphere_num_cpus - (Optional) The number of virtual CPUs to allocate for the virtual machine. Defaults to 1.
vsphere_memory - (Optional) The amount of memory in MB to allocate for the virtual machine. Defaults to 1024.
vsphere_size - (Optional) The size in GB of the virtual machine's hard disk. Defaults to 10.

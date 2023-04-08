# Terraform VMware Virtual Machines Module
### This Terraform module creates multiple virtual machines using the VMware provider.

## Prerequisites
#### VMware vSphere environment
#### Terraform >= 0.12.x
#### VMware vSphere provider for Terraform
###### Usage
## Variables
### The following variables can be configured for the virtual machines:

### vsphere_user: Username for vSphere connection.
#### vsphere_password: Password for vSphere connection.
#### vsphere_server: vSphere server IP address or DNS name.
#### vm_count: Number of virtual machines to create. Default is 2.
#### vm_prefix: Prefix for the virtual machine names. Default is vm.
#### vm_cpu: Number of CPUs for the virtual machines. Default is 2.
#### vm_mem: Amount of memory (in MB) for the virtual machines. Default is 4096.
#### vm_disk: Size (in GB) of the virtual machine disk. Default is 20.
#### Example
#### Here is an example usage of the module:

#### arduino
### module "vm" {
### source = "github.com/your-username/terraform-vmware-vms"

 ### vsphere_user       = "user"
 ### vsphere_password   = "password"
 ### vsphere_server     = "10.0.0.1"
 ### vm_count           = 3
 ### vm_prefix          = "web"
 ### vm_cpu             = 4
 ### vm_mem             = 8192
 ### vm_disk            = 50
 ### vsphere_datacenter = "datacenter1"
 ### vsphere_network    = "network1"
 ### vsphere_resource_pool = "resource-pool1"
 ### }
### This will create 3 virtual machines with names like web-01, web-02, web-03, each with 4 CPUs, 8192 MB of memory, and a 50 GB disk.

### License
### This module is licensed under the MIT license. Please see the LICENSE file for more information.

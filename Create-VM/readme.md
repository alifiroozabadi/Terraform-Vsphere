# Terraform VMware Virtual Machines Module
 This Terraform module creates multiple virtual machines using the VMware provider.

## Prerequisites
 * VMware vSphere environment
 * Terraform (version 0.12.0 or higher)
 * VMware vSphere provider for Terraform
## Usaing The Provider
 ### Variables
 
 The following variables can be configured for the virtual machines:

* ##### vsphere_user: Username for vSphere connection.
* ##### vsphere_password: Password for vSphere connection.
* ##### vsphere_server: vSphere server IP address or DNS name.
* ##### vm_count: Number of virtual machines to create. Default is 2.
* ##### vm_prefix: Prefix for the virtual machine names. Default is vm.
* ##### vm_cpu: Number of CPUs for the virtual machines. Default is 2.
* ##### vm_mem: Amount of memory (in MB) for the virtual machines. Default is 4096.
* ##### vm_disk: Size (in GB) of the virtual machine disk. Default is 20.

### Example
Here is an example usage of the module:

```HCL
 module "Your Module Name" {
 source = "github.com/Aria-Git/Terraform-Vsphere/edit/main/Create-VM"

  vsphere_user       = "Your vSphere User"
  vsphere_password   = "Your vSphere Password"
  vsphere_server     = "Your vSphere URL or IP"
  vm_count           = "Number of VMs"
  vm_prefix          = "ِThe Name You want to Give to VM"
  vm_cpu             = "Number of CPUs"
  vm_mem             = "Memory Size (MB)"
  vm_disk            = "Disk Size (GB)"
  vsphere_datacenter = "Your Datacenter Name"
  vsphere_network    = "Your vSphere Network Name"
  vsphere_resource_pool = "Your Resource Pool Name"
  }
  ```
### Contributing
Contributions are welcome! If you find a bug or have a suggestion for improvement, please open an issue or submit a pull request.

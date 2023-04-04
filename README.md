
# Terraform vSphere Automation
This repository contains Terraform code to automate vSphere tasks using the vSphere provider.

## Requirements
To use this code, you will need:

 * Terraform (version 0.12.0 or higher)
 * A vSphere environment
 * vSphere credentials with permission to perform the desired tasks

## Using the Provider
Clone this repository to your local machine.
Edit the variables.tf file to set the desired values for your environment.
Run `terraform init` to download the vSphere provider.
Run `terraform plan` to see what changes Terraform will make.
If the plan looks good, run `terraform apply` to apply the changes.
When you're done, run `terraform destroy` to remove the resources created by Terraform.
  
## Configuration
You can customize the configuration of this code by editing the variables.tf file. The available variables are:

```hcl
vsphere_server: #The hostname or IP address of the vSphere server.
vsphere_username: #The username to use when authenticating with vSphere.
vsphere_password: #The password to use when authenticating with vSphere.
vsphere_datacenter: #The name of the vSphere datacenter to use.
vsphere_cluster: #The name of the vSphere cluster to use.
vsphere_datastore: #The name of the vSphere datastore to use.
vm_name: #The name to give the virtual machine that will be created.
vm_template: #The name of the vSphere template to use when creating the virtual machine.
vm_network: #The name of the vSphere network to use when creating the virtual machine.
vm_ip_address: #The IP address to assign to the virtual machine.
vm_dns_servers: #A list of DNS servers to configure on the virtual machine.
vm_gateway: #The default gateway to configure on the virtual machine.
```

## Contributing
Contributions are welcome! If you find a bug or have a suggestion for improvement, please open an issue or submit a pull request.


module "Create-VM1" {
  source = "./module/Create-VM"
  vsphere_name  = "vm1"
}

module "Create-VM2" {
  source = "./module/Create-VM"
  vsphere_name  = "Vvm2"

}

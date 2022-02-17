provider "aws" {
  region     = var.instance_region
   access_key = var.instance_accesskey
   secret_key = var.instance_secretkey
   
}

module "test" {

    source = "./modules/test/"
    instance_AMI = var.instance_AMI
    instance_type = var.instance_type
    instance_key = var.instance_key
}


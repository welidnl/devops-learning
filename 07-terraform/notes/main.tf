# good practice to have main file that can be used to call modules

module "ec2" {
  source = "./modules/ec2" #then you reference the module you created using the path
}

# run a terraform init to initialise the module afterwards
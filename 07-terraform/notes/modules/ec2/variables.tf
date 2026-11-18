variable "instance_type" {
  type = string
  default = "t3.micro" #if default value is not specified it will ask for user input
}
# best practice is to define the input in a seperate .tfvars document

locals {
  instance_ami = "ami-0547ecbf0e9b4aeb5"

}

output "instance_id" {
  description = "the ID of the EC2 instance"
  value       = aws_instance.this.id #reference the resource id name
}                                    # when running a terraform plan/apply it will now output the instance ID in the terminal when it's done
# best practices: use descriptive names, use description for output so it's easier to understand
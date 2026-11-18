resource "aws_instance" "this" {
  ami           = local.instance_ami #calls to the local variable defined in the variables.tf doc
  instance_type = var.instance_type  #calls to the input variable defined in the variables.tf doc
}

resource "aws_instance" "import" {
  ami           = local.instance_ami
  instance_type = var.instance_type
  tags = {
    Name = "terraform-import"
  }
}

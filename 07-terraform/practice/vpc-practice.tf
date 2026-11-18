resource "aws_vpc" "practice-tf-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "Practice tf VPC"
  }
}


resource "aws_subnet" "Public_Subnet_Practice" {
  vpc_id                  = aws_vpc.practice-tf-vpc.id # links the subnet to VPC
  cidr_block              = var.subnet_cidr
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true # gives the instance a public IP

  tags = {
    Name = "Practice-Subnet"
  }
}

resource "aws_internet_gateway" "practice_tf_igw" {
  vpc_id = aws_vpc.practice-tf-vpc.id

  tags = {
    Name = "practice_tf_igw"
  }
}

resource "aws_route_table" "practice_tf_rt" {
  vpc_id = aws_vpc.practice-tf-vpc.id

  route {
    cidr_block = var.route_cidr
    gateway_id = aws_internet_gateway.practice_tf_igw.id
  }

  tags = {
    Name = "practice_tf_rt"
  }
}

resource "aws_route_table_association" "Practice_rt_subnet_assoc" {
  subnet_id      = aws_subnet.Public_Subnet_Practice.id
  route_table_id = aws_route_table.practice_tf_rt.id
}





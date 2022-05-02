data "aws_vpc" "main_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "data-a" {
  filter {
    name   = "tag:Name"
    values = [var.data_a_subnet_name]
  }
}

data "aws_subnet" "data-b" {
  filter {
    name   = "tag:Name"
    values = [var.data_b_subnet_name]
  }
}
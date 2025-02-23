data "aws_vpc" "main" {
  id = var.vpc_id
}

data "aws_subnet" "subnet1" {
  id =  "subnet-027cdb23a580760ab"
}

data "aws_subnet" "subnet2" {
    id = "subnet-07a3ba2d2806fc3fd"

}
data "aws_subnet" "subnet3" {
    id = "subnet-0feda23dda521652c"

}
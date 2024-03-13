resource "aws_vpc" "vpc_1" {
    cidr_block = "192.168.0.0/16"
    tags = {
        Name = "VPC-1"
    }
}

resource "aws_subnet" "public_subnet"{
    vpc_id = aws_vpc.vpc_1.id
    cidr_block = "192.168.1.0/24"
    map_public_ip_on_launch = true
    tags = {Name = "subnet-vpc1"}
}


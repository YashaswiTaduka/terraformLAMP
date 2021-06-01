#Configuring public subnet route table and associating with internet gateway

resource "aws_route_table" "myvpc_public_subnet_route_table" {
  vpc_id = "${aws_vpc.myvpc.id}"
  route {
     cidr_block = "${var.route_table_cidr}"
     gateway_id = "${aws_internet_gateway.myvpc_internet_gateway.id}"
  }
  tags = {
     Name = "myvpc_public_subnet_route_table"
  }
}
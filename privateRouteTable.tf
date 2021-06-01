# Configuring private subnet route table

resource "aws_route_table" "myvpc_private_subnet_route_table" {
  vpc_id = "${aws_vpc.myvpc.id}"
  tags = {
      Name = "myvpc_private_subnet_route_table"
  }
}
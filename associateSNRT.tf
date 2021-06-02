# Associating subnets with route tables

resource "aws_route_table_association" "myvpc_public_subnet_route_table_association" {
  subnet_id = "${aws_subnet.myvpc_public_subnet.id}"
  route_table_id = "${aws_route_table.myvpc_public_subnet_route_table.id}"
}

resource "aws_route_table_association" "myvpc_private_subnet_one_route_table_association" {
  subnet_id = "${aws_subnet.myvpc_private_subnet_one.id}"
  route_table_id = "${aws_route_table.myvpc_private_subnet_route_table.id}"
}

resource "aws_route_table_association" "myvpc_private_subnet_two_route_table_association" {
  subnet_id = "${aws_subnet.myvpc_private_subnet_two.id}"
  route_table_id = "${aws_route_table.myvpc_private_subnet_route_table.id}"
}

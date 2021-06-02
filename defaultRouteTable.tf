# Configuring default route table

resource "aws_default_route_table" "myvpc_main_route_table" {
  default_route_table_id = "${aws_vpc.myvpc.default_route_table_id}"
  tags = {
      Name = "myvpc_main_route_table"
  }
}

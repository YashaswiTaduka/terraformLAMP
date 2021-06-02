# Configuring the private subnet one

resource "aws_subnet" "myvpc_private_subnet_one" {
  vpc_id = "${aws_vpc.myvpc.id}"
  cidr_block = "${element(var.subnet_two_cidr, 0)}"
  availability_zone = "us-east-1a"
  tags = {
      Name = "myvpc_private_subnet_one"
  }
}

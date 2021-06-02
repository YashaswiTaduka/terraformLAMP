# Configuring private subnet two

resource "aws_subnet" "myvpc_private_subnet_two" {
  vpc_id = "${aws_vpc.myvpc.id}"
  cidr_block = "${element(var.subnet_two_cidr, 1)}"
  availability_zone = "us-east-1b"
  tags = {
      Name = "myvpc_private_subnet_two"
  }
}

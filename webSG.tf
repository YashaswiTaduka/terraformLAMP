#Configuring web security group and adding inbound and outbound rules

resource "aws_security_group" "web_security_group" {
  name = "web_security_group"
  description = "Allow all inbound traffic"
  vpc_id = "${aws_vpc.myvpc.id}"
  tags = {
      Name = "web_security_group"
  }
}

resource "aws_security_group_rule" "web_ingress" {
  count = "${length(var.web_ports)}"
  type = "ingress"
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  from_port = "${element(var.web_ports, count.index)}"
  to_port = "${element(var.web_ports, count.index)}"
  security_group_id = "${aws_security_group.web_security_group.id}"
}

resource "aws_security_group_rule" "web_egress" {
  count = "${length(var.web_ports)}"
  type = "egress"
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  from_port = "${element(var.web_ports, count.index)}"
  to_port = "${element(var.web_ports, count.index)}"
  security_group_id = "${aws_security_group.web_security_group}"
}
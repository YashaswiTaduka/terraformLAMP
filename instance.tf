# Configuring the web server instance

resource "aws_instance" "my_web_instance" {
  ami = "${lookup(var.images,var.region)}"
  instance_type = "t2.micro"
  key_name = "NVKeypair.pem"
  vpc_security_group_ids = ["${aws_security_group.web_security_group.id}"]
  subnet_id = "${aws_subnet.myvpc_public_subnet.id}"

  tags = {
      Name = "my_web_instance"
  }

  volume_tags = {
    "Name" = "my_web_instance_volume"
  }

  provisioner "remote_exec" {
  inline = [
      "sudo yum update -y",
      "sudo yum install -y httpd",
      "service httpd start",
      "sudo usermod -a -G apache ec2-user",
      "sudo chown -R ec2-user:apache /var/www",
      "sudo yum install -y mysql php php-mysql"
  ]
  }

connection {
    type = "ssh"
    user = "ec2-user"
    password = ""
    private_key = "${file("home/ec2-user/NVKeypair.pem")}"

}

output "web_server_address" {
    value = "${aws_instance.my_web_instance.public_dns}"
}

}
# Configuring the web server instance

resource "aws_instance" "my_web_instance" {
  key_name = "${aws_key_pair.awskey.key_name}"
  ami = "${lookup(var.images,var.region)}"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.web_security_group.id}"]
  subnet_id = "${aws_subnet.myvpc_public_subnet.id}"

  tags = {
      Name = "my_web_instance"
  }

  volume_tags = {
    "Name" = "my_web_instance_volume"
  }

  provisioner "remote-exec" {
  inline = [
      "sudo yum update -y",
      "sudo yum install -y httpd",
      "sudo service httpd start",
      "sudo usermod -a -G apache ec2-user",
      "sudo chown -R ec2-user:apache /var/www",
      "sudo yum install -y mysql php php-mysql"
  ]
  }

connection {
    type = "ssh"
    user = "ec2-user"
    password = ""
    host = self.public_ip
    private_key = file("NVKeypair.pem")    

}

}

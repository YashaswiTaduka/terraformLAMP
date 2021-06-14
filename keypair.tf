resource "aws_key_pair" "awskey" {
  key_name = "awskey"
  public_key = file("NVKeypair.pub")
}

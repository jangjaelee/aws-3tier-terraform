resource "aws_key_pair" "awx_keypairs" {
  key_name   = "Keypair-awx"
  public_key = file(var.ec2_keypair)
}

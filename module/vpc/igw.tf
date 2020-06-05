# Create Internet Gateway
resource "aws_internet_gateway" "igw-awx" {
  vpc_id = aws_vpc.vpc-awx.id

  tags = {
    Name = "IGW-awx"
  }
}

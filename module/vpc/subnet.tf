# Create Public Subnet NAT-GW, ALB and Bastion
resource "aws_subnet" "sn-public-2a-webelb" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "SN-public-2a-WEBELB"
  }
}

resource "aws_subnet" "sn-public-2c-webelb" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "SN-public-2c-WEBELB"
  }
}

resource "aws_subnet" "sn-public-2a-natgw" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "SN-public-2a-NATGW"
  }
}

resource "aws_subnet" "sn-public-2c-natgw" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "SN-public-2c-NATGW"
  }
}


resource "aws_subnet" "sn-private-2a-web" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "SN-private-2a-WEB"
  }
}

resource "aws_subnet" "sn-private-2c-web" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "SN-private-2c-WEB"
  }
}

resource "aws_subnet" "sn-private-2a-waselb" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.7.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "SN-private-2a-WASELB"
  }
}

resource "aws_subnet" "sn-private-2c-waselb" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.8.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "SN-private-2c-WASELB"
  }
}

resource "aws_subnet" "sn-private-2a-was" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.9.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "SN-private-2a-WAS"
  }
}

resource "aws_subnet" "sn-private-2c-was" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "SN-private-2c-WAS"
  }
}

resource "aws_subnet" "sn-private-2a-db" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.11.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "SN-private-2a-DB"
  }
}

resource "aws_subnet" "sn-private-2c-db" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.12.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "SN-private-2c-DB"
  }
}

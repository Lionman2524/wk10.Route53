#These are   for  public

resource "aws_subnet" "public-ap-southeast-1a" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.16.1.0/24"
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-1a"
    Service = "application1"
    Owner = "Cloudwalkers"
    Planet = "Earth"
  }
}

resource "aws_subnet" "public-ap-southeast-1b" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.16.2.0/24"
  availability_zone       = "ap-southeast-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-1b"
    Service = "application1"
    Owner = "Cloudwalkers"
    Planet = "Earth"
  }
}


resource "aws_subnet" "public-ap-southeast-1c" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.16.3.0/24"
  availability_zone       = "ap-southeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-1c"
    Service = "application1"
    Owner = "Cloudwalkers"
    Planet = "Earth"
  }
}

#these are for private
resource "aws_subnet" "private-ap-southeast-1a" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.16.11.0/24"
  availability_zone = "ap-southeast-1a"

  tags = {
    Name    = "private-ap-southeast-1a"
    Service = "application1"
    Owner = "Cloudwalkers"
    Planet = "Earth"
  }
}

resource "aws_subnet" "private-ap-southeast-1b" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.16.12.0/24"
  availability_zone = "ap-southeast-1b"

  tags = {
    Name    = "private-ap-southeast-1b"
    Service = "application1"
    Owner = "Cloudwalkers"
    Planet = "Earth"
  }
}


resource "aws_subnet" "private-ap-southeast-1c" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.16.13.0/24"
  availability_zone = "ap-southeast-1c"

  tags = {
    Name    = "private-ap-southeast-1c"
    Service = "application1"
    Owner = "Cloudwalkers"
    Planet = "Earth"
  }
}

resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "app1_NAT"
    Service = "application1"
    Owner = "Cloudwalkers"
    Planet = "Earth"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-ap-southeast-1a.id

  tags = {
    Name = "app1_NAT"
    Service = "application1"
    Owner = "Cloudwalkers"
    Planet = "Earth"
  }

  depends_on = [aws_internet_gateway.igw]
}

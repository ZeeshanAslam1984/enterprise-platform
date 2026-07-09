resource "aws_internet_gateway" "main" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.environment}-igw"
  }
}

resource "aws_subnet" "public" {
  vpc_id = var.vpc_id

  cidr_block = var.public_subnet_cidr

  availability_zone = var.availability_zone

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.environment}-public-subnet"
  }
}


resource "aws_subnet" "private" {
  vpc_id = var.vpc_id

  cidr_block = var.private_subnet_cidr

  availability_zone = var.availability_zone

  tags = {
    Name = "${var.environment}-private-subnet"
  }
}

resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"

    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "${var.environment}-public-route-table"
  }
}


resource "aws_route_table_association" "public" {
  subnet_id = aws_subnet.public.id

  route_table_id = aws_route_table.public.id
}
resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "${var.environment}-nat-eip"
  }
}

resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "${var.environment}-nat-gateway"
  }

  depends_on = [
    aws_internet_gateway.main
  ]
}

resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main.id
  }

  tags = {
    Name = "${var.environment}-private-route-table"
  }
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}

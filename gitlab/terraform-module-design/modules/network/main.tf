################################################################################
# VPC
################################################################################

# VPCの作成
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  tags = {
    Name = var.vpc_name
  }
}

################################################################################
# Internet Gateway
################################################################################

# Internet Gatewayの作成
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.internet_gateway_name
  }

  depends_on = [
    aws_vpc.main
  ]

}

################################################################################
# Public Subnets
################################################################################

# Public Subnetの作成
resource "aws_subnet" "public" {
  for_each          = var.public_subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone
  tags = {
    Name = each.value.subnet_name
  }

  depends_on = [
    aws_vpc.main
  ]

}

# Route Tableの作成(Public)
resource "aws_route_table" "public" {
  for_each = var.public_subnets
  vpc_id   = aws_vpc.main.id
  tags = {
    Name = each.value.route_table_name
  }

  depends_on = [
    aws_vpc.main
  ]

}

# Routeの作成(Public)
resource "aws_route" "public" {
  for_each               = var.public_subnets
  route_table_id         = aws_route_table.public[each.key].id
  gateway_id             = aws_internet_gateway.main.id
  destination_cidr_block = "0.0.0.0/0"

  depends_on = [
    aws_route_table.public,
    aws_internet_gateway.main
  ]
}

# Public SubnetへのRoute Tableのアサイン
resource "aws_route_table_association" "public" {
  for_each       = var.public_subnets
  subnet_id      = aws_subnet.public[each.key].id
  route_table_id = aws_route_table.public[each.key].id

  depends_on = [
    aws_route_table.public,
    aws_subnet.public
  ]
}

################################################################################
# Private Subnets
################################################################################

# Private Subnetの作成
resource "aws_subnet" "private" {
  for_each          = var.private_subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone
  tags = {
    Name = each.value.subnet_name
  }

  depends_on = [
    aws_vpc.main
  ]

}

# Route Tableの作成(Private)
resource "aws_route_table" "private" {
  for_each = var.private_subnets
  vpc_id   = aws_vpc.main.id
  tags = {
    Name = each.value.route_table_name
  }

  depends_on = [
    aws_vpc.main
  ]

}

# Private SubnetへのRoute Tableのアサイン
resource "aws_route_table_association" "private" {
  for_each       = var.private_subnets
  subnet_id      = aws_subnet.private[each.key].id
  route_table_id = aws_route_table.private[each.key].id

  depends_on = [
    aws_route_table.private,
    aws_subnet.private
  ]
}

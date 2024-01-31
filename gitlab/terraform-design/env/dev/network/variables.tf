variable "vpc_cidr" {
  description = "VPCに割り当てるCIDR"
  type        = string
  default     = "192.168.0.0/16"
}

variable "vpc_name" {
  description = "VPCの名前"
  type        = string
  default     = "terradesign-dev-vpc"
}

variable "internet_gateway_name" {
  description = "インターネットゲートウェイの名前"
  type        = string
  default     = "terradesign-dev-internet-gateway"
}

variable "public_subnets" {
  description = "パブリックサブネット"
  type        = map(any)
  default = {
    "1a" = {
      subnet_name       = "terradesign-dev-public-sunbet-1a"
      route_table_name  = "terradesign-dev-public-routetable-1a"
      cidr_block        = "192.168.10.0/24"
      availability_zone = "ap-northeast-1a"
    },
    "1c" = {
      subnet_name       = "terradesign-dev-public-sunbet-1c"
      route_table_name  = "terradesign-dev-public-routetable-1c"
      cidr_block        = "192.168.20.0/24"
      availability_zone = "ap-northeast-1c"
    },
    "1d" = {
      subnet_name       = "terradesign-dev-public-sunbet-1d"
      route_table_name  = "terradesign-dev-public-routetable-1d"
      cidr_block        = "192.168.30.0/24"
      availability_zone = "ap-northeast-1d"
    },
  }
}


variable "private_subnets" {
  description = "プライベートサブネット"
  type        = map(any)
  default = {
    "1a" = {
      subnet_name       = "terradesign-dev-private-sunbet-1a"
      route_table_name  = "terradesign-dev-private-routetable-1a"
      cidr_block        = "192.168.11.0/24"
      availability_zone = "ap-northeast-1a"
    },
    "1c" = {
      subnet_name       = "terradesign-dev-private-sunbet-1c"
      route_table_name  = "terradesign-dev-private-routetable-1c"
      cidr_block        = "192.168.21.0/24"
      availability_zone = "ap-northeast-1c"
    },
    "1d" = {
      subnet_name       = "terradesign-dev-private-sunbet-1d"
      route_table_name  = "terradesign-dev-private-routetable-1d"
      cidr_block        = "192.168.31.0/24"
      availability_zone = "ap-northeast-1d"
    },
  }
}

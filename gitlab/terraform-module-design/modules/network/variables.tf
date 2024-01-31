################################################################################
# VPC
################################################################################

variable "vpc_cidr" {
  description = "VPCに割り当てるCIDR"
  type        = string
  default     = null
}

variable "vpc_name" {
  description = "VPCの名前"
  type        = string
  default     = null
}

variable "enable_dns_hostnames" {
  description = "DNS名前付与の有効化"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "DNS名前解決の有効化"
  type        = bool
  default     = true
}

################################################################################
# Internet Gateway
################################################################################

variable "internet_gateway_name" {
  description = "Internet Gatewayの名前"
  type        = string
  default     = null
}

################################################################################
# Public Subnets
################################################################################

variable "public_subnets" {
  description = " Public Subnetの情報一覧"
  type        = map(any)
  default = {
  }
}

################################################################################
# Private Subnets
################################################################################

variable "private_subnets" {
  description = "Private Subnetの一覧"
  type        = map(any)
  default = {
  }
}


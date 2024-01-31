output "vpc_id" {
  description = "VPCのID"
  value       = module.network.vpc_id
}

output "internet_gateway_id" {
  description = "VPCのID"
  value       = module.network.internet_gateway_id
}

output "public_subnet_1a_id" {
  description = "パブリックサブネット1aのID"
  value       = module.network.public_subnet_ids[0]

}

output "public_subnet_1c_id" {
  description = "パブリックサブネット1cのID"
  value       = module.network.public_subnet_ids[1]

}

output "public_subnet_1d_id" {
  description = "パブリックサブネット1dのID"
  value       = module.network.public_subnet_ids[2]

}

output "private_subnet_1a_id" {
  description = "プライベートサブネット1aのID"
  value       = module.network.private_subnet_ids[0]

}

output "private_subnet_1c_id" {
  description = "プライベートサブネット1cのID"
  value       = module.network.private_subnet_ids[1]

}

output "private_subnet_1d_id" {
  description = "プライベートサブネット1dのID"
  value       = module.network.private_subnet_ids[2]

}
output "alb_dns_name" {
  description = "DNS name of the external Application Load Balancer"
  value       = module.ALB.alb_dns_name
}

output "alb_target_group_arn" {
  description = "ARN of the Nginx target group"
  value       = module.ALB.alb_target_group_arn
}

output "vpc_id" {
  description = "The ID of the main VPC"
  value       = module.VPC.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = [module.VPC.public_subnets-1, module.VPC.public_subnets-2]
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = [module.VPC.private_subnets-1, module.VPC.private_subnets-2, module.VPC.private_subnets-3, module.VPC.private_subnets-4]
}

output "nat_gateway_ip" {
  description = "Public IP of the NAT Gateway"
  value       = module.VPC.nat_gateway_ip
}

output "internal_alb_dns" {
  description = "DNS name of the internal ALB - needed for Ansible nginx config"
  value       = module.ALB.internal_alb_dns
}

output "rds_endpoint" {
  description = "RDS instance endpoint - needed for Ansible wordpress and tooling config"
  value       = module.RDS.rds_endpoint
}

output "efs_id" {
  description = "EFS file system ID - needed for Ansible mounting config"
  value       = module.EFS.efs_id
} 

output "wordpress_access_point_id" {
  description = "EFS access point ID for WordPress - needed for Ansible"
  value       = module.EFS.wordpress_access_point_id
}

output "tooling_access_point_id" {
  description = "EFS access point ID for Tooling - needed for Ansible"
  value       = module.EFS.tooling_access_point_id
}
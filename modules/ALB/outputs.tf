output "alb_dns_name" {
  value = aws_lb.ext-alb.dns_name
}

output "alb_target_group_arn" {
  value = aws_lb_target_group.nginx-tgt.arn
}

output "wordpress_tgt_arn" {
  value = aws_lb_target_group.wordpress-tgt.arn
}

output "tooling_tgt_arn" {
  value = aws_lb_target_group.tooling-tgt.arn
}

output "ext_alb_arn" {
  value = aws_lb.ext-alb.arn
}

output "int_alb_arn" {
  value = aws_lb.ialb.arn
}

output "internal_alb_dns" {
  description = "DNS name of the internal ALB - used by Ansible for Nginx reverse proxy config"
  value       = aws_lb.ialb.dns_name
}
output "ecs_cluster_name" {
  value = aws_ecs_cluster.medusa_cluster.name
}

output "alb_dns_name" {
  value = aws_lb.medusa_alb.dns_name
}

output "ecr_repo_url" {
  value = aws_ecr_repository.my_repo.repository_url
}

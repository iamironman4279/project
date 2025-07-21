resource "aws_db_subnet_group" "medusaa_subnet" {
  name       = "medusa-db-subnetv2"
  subnet_ids = aws_subnet.public[*].id
}

resource "aws_rds_cluster" "medusa_db" {
  cluster_identifier      = "medusa-db"
  engine                  = "aurora-postgresql"
  master_username         = "admin123"   
  master_password         = "admin717"
  database_name           = "medusadb"
  db_subnet_group_name    = aws_db_subnet_group.medusaa_subnet.name
  vpc_security_group_ids  = [aws_security_group.ecs_sg.id]
  
  skip_final_snapshot     = true
}
module "vpc" {
  source  = "app.terraform.io/ryanf/vpc/aws"
  version = "1.0.5"

}
resource "aws_db_instance" "rds" {
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  engine               = var.db_engine
  engine_version       = var.db_version
  instance_class       = var.db_instance_class
  username             = var.db_username
  db_subnet_group_name = var.db_subnet_group_name
  password             = var.db_password
  skip_final_snapshot  = var.skip_final_snapshot
}
resource "aws_db_instance" "mysql" {
  identifier             = "app"
  allocated_storage      = 50
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7.11"
  instance_class         = "db.m4.large"
  name                   = "app_db"
  port                   = 3306
  publicly_accessible    = false
  vpc_security_group_ids = ["${aws_security_group.mysql.id}"]
  db_subnet_group_name   = "app-subnet-group"
  parameter_group_name   = "default.mysql5.7" // default DB parameter group!
  multi_az               = true
  pssword                = "Asdf"
}

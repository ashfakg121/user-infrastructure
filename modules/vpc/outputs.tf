output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "db_sg_id" {
  value = aws_security_group.db_sg.id
}

output "db_subnet_group" {
  value = aws_db_subnet_group.db_subnet.name
}
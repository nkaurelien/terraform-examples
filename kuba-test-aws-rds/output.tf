

output "vpc_selected" {
  value = data.aws_vpc.main.cidr_block
}


output "rds_cluster_endpoint" {
  description = "The endpoint of the RDS Aurora cluster"
  value       = aws_rds_cluster.aurorards.endpoint
}

output "rds_cluster_reader_endpoint" {
  description = "The reader endpoint of the RDS Aurora cluster"
  value       = aws_rds_cluster.aurorards.reader_endpoint
}

output "rds_cluster_instance_endpoint" {
  description = "The endpoint of the RDS Aurora cluster instance"
  value       = aws_rds_cluster_instance.cluster_instances.endpoint
}

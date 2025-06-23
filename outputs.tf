output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.james_brown_vpc.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public_subnet[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private_subnet[*].id
}

output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.sam_cooke_instance.id
}

output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.sam_cooke_instance.public_ip
}

output "efs_id" {
  description = "ID of the EFS filesystem"
  value       = aws_efs_file_system.marvin_gaye.id
}

output "private_key_filename" {
  description = "Name of the generated private key file"
  value       = local_file.respect_key.filename
}

output "ssh_command" {
  description = "Command to SSH into the EC2 instance"
  value       = "ssh -i ${var.key_name}.pem ec2-user@${aws_instance.sam_cooke_instance.public_ip}"
}
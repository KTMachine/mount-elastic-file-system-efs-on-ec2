resource "aws_efs_file_system" "marvin_gaye" {
  creation_token = "marvin_gaye_efs"

  tags = {
    Name = "marvin_gaye_efs"
  }
}

resource "aws_efs_mount_target" "marvin_gaye_mount_target" {
  count           = length(var.private_subnet_cidrs)
  file_system_id  = aws_efs_file_system.marvin_gaye.id
  subnet_id       = aws_subnet.private_subnet[count.index].id
  security_groups = [aws_security_group.superstition_efs_sg.id]
}
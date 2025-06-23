resource "aws_instance" "sam_cooke_instance" {
  instance_type               = var.instance_type
  ami                         = data.aws_ami.amazon_linux_2.id
  subnet_id                   = aws_subnet.public_subnet[0].id
  key_name                    = var.key_name
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              sudo yum install -y amazon-efs-utils nfs-utils
              sudo mkdir -p /mnt/efs
              sudo mount -t efs ${aws_efs_file_system.marvin_gaye.id}:/ /mnt/efs
              # To mount automatically on reboot, add to /etc/fstab
              echo "${aws_efs_file_system.marvin_gaye.id}:/ /mnt/efs efs defaults,_netdev 0 0" | sudo tee -a /etc/fstab
              EOF

  tags = {
    Name = "sam_cooke_instance"
  }
}
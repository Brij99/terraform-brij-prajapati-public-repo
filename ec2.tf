resource "aws_instance" "nginx_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.nginx_sg.id]

  root_block_device {
    volume_size = 30
    volume_type = "gp2"
  }

  user_data = file("userdata.sh")

  tags = {
    Name = "nginx-server"
  }
}

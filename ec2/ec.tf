#configure aws ec2 instance
resource "aws_instance" "web_server" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  associate_public_ip_address = "true"
  vpc_security_group_ids      = [var.sg_id]

  tags = {
    Name = "netflix_web_server"
  }
}
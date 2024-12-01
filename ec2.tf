
# EC2 Instance
resource "aws_instance" "takserver" {
  ami                    = var.ami_id        # Replace with your desired AMI ID
  instance_type          = var.instance_type # Replace with your desired instance type
  hibernation            = false
  vpc_security_group_ids = [aws_security_group.this.id]
  key_name               = "${var.project_name["shortname"]}-keypair"

  tags = {
    Name = "${var.project_name["shortname"]}-server"
  }

}

# Elastic IP
resource "aws_eip" "this" {
  instance = aws_instance.takserver.id
  domain   = "vpc"

  tags = {
    Name = "${var.project_name["shortname"]}-eip"
  }
}
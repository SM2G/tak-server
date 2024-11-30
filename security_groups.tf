# Security Group
resource "aws_security_group" "this" {
  name        = "${var.project_name["shortname"]}-sg"
  description = "Security group for ${var.project_name["longname"]}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    description = "SSH Access"
    cidr_blocks = ["0.0.0.0/0"] # Consider restricting to your IP for production
  }

  ingress {
    from_port   = 8446
    to_port     = 8446
    protocol    = "tcp"
    description = "TAK Server Streaming API"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8443
    to_port     = 8443
    protocol    = "tcp"
    description = "TAK Server SSL"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8444
    to_port     = 8444
    protocol    = "tcp"
    description = "TAK Server Admin Interface"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8089
    to_port     = 8089
    protocol    = "tcp"
    description = "TAK Server API"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8087
    to_port     = 8087
    protocol    = "tcp"
    description = "TAK Server CoT"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name["shortname"]}-sg"
  }
}
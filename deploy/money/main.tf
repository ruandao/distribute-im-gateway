

provider "aws" {
  region     = var.region
}

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id #refrencing vpc id
}

resource "aws_route_table" "route-table" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "Prod RT"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${var.region}a"

  tags = {
    name = "Prod Subnet"
  }
}

resource "aws_route_table_association" "connection-RT-subnet" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.route-table.id
}

resource "aws_security_group" "sg" {
  name        = "security_group"
  description = "Allow Web inbound traffic"
  vpc_id      = aws_vpc.vpc.id
  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }
  tags = {
    Name = " security_group"
  }
}
resource "aws_network_interface" "server-nic" {
  subnet_id       = aws_subnet.subnet.id
  private_ips     = ["10.0.1.50"]
  security_groups = [aws_security_group.sg.id]
}
resource "aws_instance" "db" {
  ami               =  var.ami
  instance_type     = "t3.micro"
  availability_zone = "${var.region}a"
  key_name          = "terraform-aws"

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.server-nic.id
  }

  user_data = <<-EOF
                #!/bin/bash
                sudo yum update -y
                sudo yum install -y docker git
                sudo usermod -a -G docker ec2-user
                id ec2-user
                newgrp docker
                sudo systemctl enable docker.service
                sudo systemctl start docker.service
                sudo curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-$(uname -m) -o /usr/libexec/docker/cli-plugins/docker-compose
                sudo chmod +x /usr/libexec/docker/cli-plugins/docker-compose
                cd && docker compose version > /home/ec2-user/docker_compose_version
                echo "export LANG=zh_CN.UTF-8" >> /home/ec2-user/.bashrc
                EOF

  tags = {
    Name = "my-web-server"
  }
}


resource "aws_eip" "one" {
  network_interface         = aws_network_interface.server-nic.id
  associate_with_private_ip = "10.0.1.50"
  depends_on                = [aws_internet_gateway.igw, aws_instance.db]
}

output "eip_public_ip" {
  value = aws_eip.one.public_ip
  description = "弹性公网IP地址"
}


resource "local_file" "ip_output" {
  filename = "${path.module}/../ansible-playbooks/inventory/awsenv.ini"
  content = join("\n", [
    "[dbSer]",
    aws_eip.one.public_ip,
    "",
    "[dbSer:vars]",
    "ansible_user=ec2-user",
    "ansible_ssh_private_key_file=~/.ssh/terraform-aws",
    "",
  ])
}


resource "local_file" "ssh_conf" {
  filename = "${path.module}/../ssh/config"
  content = join("\n", [
    "Host dbSer",
    format("Hostname %s", aws_eip.one.public_ip),
    "User ec2-user",
    "IdentityFile ~/.ssh/terraform-aws",
  ])
}
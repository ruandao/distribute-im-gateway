

resource "null_resource" "cleanSSHConfig" {
  provisioner "local-exec" {
    command = "echo '' > '${path.module}/../_ssh/config'"
  }
}

resource "local_file" "cleanSerENVInit" {
  filename = "${path.module}/../ansible-playbooks/inventory/awsenv.ini"
  content = ""
}

resource "aws_vpc" "vpc" {
  depends_on = [ local_file.cleanSerENVInit, null_resource.cleanSSHConfig ]
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
  map_public_ip_on_launch = true  # 启用自动分配公网 IP

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
    description = "Swarm manager communicate"
    from_port   = 2377
    to_port     = 2377
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Swarm node communicate tcp"
    from_port   = 7946
    to_port     = 7946
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Swarm node communicate udp"
    from_port   = 7946
    to_port     = 7946
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Swarm net communicate"
    from_port   = 4789
    to_port     = 4789
    protocol    = "udp"
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


/*
# 创建多个网络接口（每个实例一个）
resource "aws_network_interface" "server-nic" {
  for_each = var.instances

  subnet_id       = aws_subnet.subnet.id
  security_groups = [aws_security_group.sg.id]

  tags = {
    Name = "server-nic-${each.key}"
  }
}

*/
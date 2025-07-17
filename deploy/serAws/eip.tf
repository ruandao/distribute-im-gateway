
/*

resource "aws_eip" "one" {
  network_interface         = aws_network_interface.server-nic.id
  associate_with_private_ip = var.ip_manager
  depends_on                = [aws_internet_gateway.igw, aws_instance.swarm_manager]
}


resource "aws_eip_association" "web_server_association" {
  allocation_id = aws_eip.one.id
  instance_id   = aws_instance.swarm_manager.id
}

*/
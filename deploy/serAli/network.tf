

# 创建VPC
resource "alicloud_vpc" "main" {
  depends_on = [ 
    null_resource.cleanSSHConfig, 
    local_file.cleanSerENVInit,  
    local_file.cleanAllNodesENVInit, 
    local_file.cleanSwarmManagerENVInit, local_file.cleanSwarmWorkerENVInit,
    local_file.cleanBIZ_DBENVInit, local_file.cleanBIZ_RedisENVInit, local_file.cleanBIZ_AuthENVInit
  ]
  vpc_name       = "terraform_vpc"
  cidr_block = "172.31.32.0/20"
}

# 创建交换机
resource "alicloud_vswitch" "main" {
  vpc_id            = alicloud_vpc.main.id
  cidr_block        = "172.31.32.0/20"
  zone_id           = var.availability_zone
  vswitch_name      = "terraform_vswitch"
}

# 创建安全组
resource "alicloud_security_group" "main" {
  security_group_name        = "terraform_sg"
  description                = "Terraform security group"
  vpc_id                     = alicloud_vpc.main.id
}

# 添加安全组规则 - 允许SSH访问
resource "alicloud_security_group_rule" "ssh" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.main.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "https" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "443/443"
  priority          = 1
  security_group_id = alicloud_security_group.main.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "http" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "80/80"
  priority          = 1
  security_group_id = alicloud_security_group.main.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "swarm_manager_communicate" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "2377/2377"
  priority          = 1
  security_group_id = alicloud_security_group.main.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "swarm_node_communicate_tcp" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "7946/7946"
  priority          = 1
  security_group_id = alicloud_security_group.main.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "swarm_node_communicate_udp" {
  type              = "ingress"
  ip_protocol       = "udp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "7946/7946"
  priority          = 1
  security_group_id = alicloud_security_group.main.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "swarm_net_communicate" {
  type              = "ingress"
  ip_protocol       = "udp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "4789/4789"
  priority          = 1
  security_group_id = alicloud_security_group.main.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "in_all" {
  type              = "ingress"
  ip_protocol       = "all"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "0/0"
  priority          = 1
  security_group_id = alicloud_security_group.main.id
  cidr_ip           = "0.0.0.0/0"
}


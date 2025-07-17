variable "region" {
  description = "Aliyun Region"
  type        = string
  default = "cn-hongkong"
}
variable "availability_zone" {
  description = "Aliyun Region Zone"
  type        = string
  default     =  "cn-hongkong-c"  # 可选默认值
}

variable "image_id" {
    description = "Aliyun image id"
    type        = string
    # CentOS Stream 9 64位
    # 名称：centos_stream_9_x64_20G_alibase_20250707.vhd
    # 描述：Kernel version is 5.14.0-592.el9.x86_64, 2025.7.7
    default = "centos_stream_9_x64_20G_alibase_20250707.vhd" # aws linux
}

variable "instance_type_2u4g" {
    description = "实例类型"
    type        = string
    # 4U8G ecs.e-c1m2.large 
    default = "ecs.e-c1m2.large"
}


variable "instance_disk_category" {
    description = "云盘类型"
    type        = string
    default = "cloud_essd_entry"
}

variable "key_pair_name" {
    description = "密钥名称"
    type        = string
    default = "terraform-aws"
}

variable "target_user" {
    description = "主要使用的用户"
    type        = string
    default = "root"
}
variable "target_user_home" {
    description = "用户所在home目录"
    type        = string
    default = "/root"
}



variable "ip_manager" {
    description = "Swarm manager private ip"
    type        = string
    default = "172.31.32.1"
}

variable "work_destroy" {
  description = "docker swarm 工作节点拆除"
    type        = list(string)
    default =  [
      "if sudo docker info | grep -q 'Swarm: active'; then",
      "  sudo docker swarm leave",
      "fi"
    ]
}


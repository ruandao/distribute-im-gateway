
variable "instance_count" {
  type = map(number)
  description = "实例数量配置"
  default = {
    "swarm_manager" = 1
    
    "db" = 1
    "redis" = 0
    
    "auth" = 0
  }
}

variable "region" {
  description = "Aliyun Region"
  type        = string
  default = "ap-southeast-1"
}
variable "availability_zone" {
  description = "Aliyun Region Zone"
  type        = string
  default     =  "ap-southeast-1b"  # 可选默认值
}


# 镜像配置
variable "image_id" {
    description = "Aliyun image id 目标镜像名称（检查是否存在或创建）"
    type        = string
    default     = "terraform_img-0717_2254"
}
  
variable "base_image_id" {
  description = "创建实例的基础镜像ID"
  type        = string
  # default     = "aliyun_3_x64_20G_container_optimized_alibase_20250629.vhd"
  default     = "ubuntu_24_04_x64_20G_alibase_20250702.vhd"
}


variable "img_instance_type" {
    description = "镜像实例类型"
    type        = string
    # 4U8G ecs.e-c1m2.large 
    default = "ecs.e-c1m2.large"
}
variable "instance_type_2u4g" {
    description = "实例类型"
    type        = string
    # 4U8G ecs.e-c1m2.large 
    default = "ecs.e-c1m2.large"
}

variable "instance_charge_type" {
    description = "付费类型"
    type        = string
    default = "PostPaid"
}
variable "spot_strategy" {
    description = "付费策略"
    type        = string
    default = "SpotWithPriceLimit"
}

variable "spot_price_limit" {
    description = "价格上限"
    type        = string
    default = "0.03"
}

variable "instance_disk_category" {
    description = "云盘类型"
    type        = string
    default = "cloud_essd_entry"
}
variable "max_bandwidth_out" {
    description = "最大带宽"
    type        = string
    default = 100
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
variable "local_key_position" {
    description = "用户所在home目录"
    type        = string
    default = "~/.ssh/terraform-aws"
}

variable "resource_group_id" {
  description = "资源组: terraform"
  type = string
  default = "rg-aekzyr7cbhqwidy"
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


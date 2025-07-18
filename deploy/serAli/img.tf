data "alicloud_images" "target_image" {
  name_regex  = "^${var.image_id}$"
  most_recent = true
}  

# instance.tf
resource "alicloud_instance" "software_installer" {
  # 仅当目标镜像不存在时创建实例
  count = length(data.alicloud_images.target_image.ids) == 0 ? 1 : 0
  
  image_id          = var.base_image_id
  instance_type     = var.img_instance_type
  security_groups   = [alicloud_security_group.main.id]
  vswitch_id        = alicloud_vswitch.main.id
  instance_name     = "terraform_software-installer-${var.image_id}"
  internet_max_bandwidth_out = var.max_bandwidth_out
  system_disk_category  = var.instance_disk_category
  key_name              = data.alicloud_key_pairs.existing.ids.0

  instance_charge_type         = var.instance_charge_type
  spot_strategy                = var.spot_strategy
  spot_price_limit             = var.spot_price_limit
  
  tags = {
    Name        = "terraform-im-${var.image_id}"
    Environment = "terraform"
  }
  
  lifecycle {
    create_before_destroy = true
  }
}


resource "null_resource" "sf_installer_SSHConfig" {
  depends_on = [ alicloud_instance.software_installer[0] ]
  provisioner "local-exec" {
    command = <<EOT
    cat << 'EOF' >> ${path.module}/../_ssh/config
    ${
    join("\n", [for idx, sf_installer in alicloud_instance.software_installer: 
      join("\n", [
        format("Host sf-%s", idx),
        format("Hostname %s", sf_installer.public_ip),
        format("User %s", var.target_user),
        "IdentityFile ~/.ssh/terraform-aws"
      ])
    ])
    }
EOF
EOT
  }
}

# 只有当实例创建后才执行软件安装
resource "null_resource" "software_installation" {
  count = length(data.alicloud_images.target_image.ids) == 0 ? 1 : 0
  
  depends_on = [alicloud_instance.software_installer]
  
  connection {
    type        = "ssh"
    user        = var.target_user
    private_key = file(var.local_key_position)
    host        = alicloud_instance.software_installer[0].public_ip
  }
  
  provisioner "file" {
    source = "scripts/ubuntu_install_docker.sh"
    destination = "${var.target_user_home}/ubuntu_install_docker.sh"
  }

  provisioner "local-exec" {
    command = <<EOT
      # 在本地生成脚本文件
      mkdir -p /tmp/scripts
      rm -rf /tmp/scripts/img_soft_install_commands.sh
      echo '${templatefile("tpl/img_soft_install_commands.tpl", { target_user = var.target_user, target_user_home = var.target_user_home })}' > /tmp/scripts/img_soft_install_commands.sh
    EOT
  }

  provisioner "file" {
      source = "/tmp/scripts/img_soft_install_commands.sh"
      destination = "${var.target_user_home}/img_soft_install_commands.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x ~/img_soft_install_commands.sh",
      "bash ~/img_soft_install_commands.sh",  # -x 开启命令调试输出
      # 打印脚本退出码（确认是否正常退出）
      "echo 'Script exit code: $?' >> ~/process.log",
      "sudo shutdown -h now",
    ]
  }
}

# image.tf
resource "alicloud_image" "custom_image" {
  # 仅当目标镜像不存在时创建新镜像
  count = length(data.alicloud_images.target_image.ids) == 0 ? 1 : 0
  depends_on = [alicloud_instance.software_installer, null_resource.software_installation]
  
  instance_id = alicloud_instance.software_installer[0].id
  image_name         = var.image_id
  description        = "Custom image with software installed"

  tags = {
    Name        = "terraform-im-${var.image_id}"
    ManagedBy   = "terraform"
    CreatedAt   = timestamp()  # 关键：用于判断新旧
  }
  
  lifecycle {
    create_before_destroy = true
  }
  
}

locals {
  super_img_id =  length(data.alicloud_images.target_image.images) > 0 ? data.alicloud_images.target_image.images[0].id : alicloud_image.custom_image[0].id
  # super_img_id =  "m-t4nfp3lv7zdnhoelmo1h"
}
resource "local_file" "image_id" {
  filename = "${path.module}/output/image_id"
  content = "${local.super_img_id}"
}

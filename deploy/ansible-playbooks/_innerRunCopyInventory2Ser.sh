#!/bin/bash
# -*- coding: utf-8 -*-
# 拷贝主机清单和ssh 配置文件到服务端
set -x
pwd
. bin/all.sh


cd deploy
scp -F _ssh/config -r _ssh/* mSer-0:~/distribute-im-gateway/deploy/_ssh
scp -F _ssh/config -r ansible-playbooks/inventory mSer-0:~/distribute-im-gateway/deploy/ansible-playbooks/inventory 

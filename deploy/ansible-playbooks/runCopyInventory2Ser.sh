#!/bin/bash
# -*- coding: utf-8 -*-
set -x
pwd
. bin/all.sh


cd deploy
scp -F _ssh/config -r _ssh mSer:~/distribute-im-gateway/deploy/_ssh 
scp -F _ssh/config -r ansible-playbooks/inventory mSer:~/distribute-im-gateway/deploy/ansible-playbooks/inventory 

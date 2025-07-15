#!/bin/bash
# -*- coding: utf-8 -*-
. bin/all.sh


cd deploy
scp -r _ssh mSer:~/distribute-im-gateway/deploy/_ssh -F _ssh/config
scp -r ansible-playbooks/inventory mSer:~/distribute-im-gateway/deploy/ansible-playbooks/inventory -F _ssh/config

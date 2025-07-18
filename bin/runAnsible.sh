#!/bin/bash

bash deploy/ansible-playbooks/run.1.serverPrepare.local.sh

ssh -F deploy/_ssh/config mSer-0 "cd distribute-im-gateway && bash deploy/ansible-playbooks/run.2.remote.sh"


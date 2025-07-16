#!/bin/bash

cd deploy/ansible-playbooks
ansible-playbook pullCodeOnSwarmManager.yml 
cd ../..

bash deploy/ansible-playbooks/runCopyInventory2Ser.sh
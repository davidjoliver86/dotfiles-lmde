#!/bin/bash

if [ ! -f hosts ]; then
  cat << EOF > hosts
[local]
localhost ansible_connection=local ansible_python_interpreter=/usr/lib/virtualenvs/ansible/bin/python

[local:vars]
username=$USER
debian_codename=bookworm
EOF
fi
/usr/lib/virtualenvs/ansible/bin/ansible-playbook --ask-become-pass -i hosts $@

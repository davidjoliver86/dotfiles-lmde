#!/bin/bash
/usr/lib/virtualenvs/ansible/bin/ansible-playbook --ask-become-pass -i hosts $@

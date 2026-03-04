#!/bin/bash
set -e

component=$1

dnf makecache
dnf install ansible -y

ansible-pull \
-U https://github.com/daws-86s/ansible-roboshop-roles-tf.git \
-e component=$component \
main.yaml
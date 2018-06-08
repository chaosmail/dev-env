#!/bin/sh

# Current directory
DIR=~/.dev-env

# Install Git, Python3, PIP and Ansible
sudo apt-get install -y git python3 python3-pip ansible

# Install external roles
mkdir -p .external-roles
ansible-galaxy install -p .external-roles -r requirements.yml

# Make run script executable and link it
chmod u+x $DIR/run.sh
sudo ln -sf $DIR/run.sh /usr/bin/dev-env

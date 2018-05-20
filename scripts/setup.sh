#!/bin/sh

# Current directory
DIR=$(dirname "$0")

# Install Git, Python3, PIP and Ansible
sudo apt-get install -y git python3 python3-pip ansible

# Make run script executable and link it
chmod u+x $DIR/run.sh
sudo ln -sf $DIR/run.sh /usr/bin/dev-env

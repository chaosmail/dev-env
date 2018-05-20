#!/bin/sh

# Root Directory
DIR=~/.dev-env

ansible-playbook $DIR/playbooks/main.yml -i $DIR/hosts --ask-sudo-pass
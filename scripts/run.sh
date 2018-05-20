#!/bin/sh

# Root Directory
DIR=~/.dev-env

ansible-playbook $DIR/playbooks/_main.yml -i $DIR/hosts --ask-sudo-pass
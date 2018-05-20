#!/bin/sh

# Root Directory
DIR=~/.dev-env

ansible-playbook $DIR/playbook.yml -i $DIR/hosts --ask-sudo-pass
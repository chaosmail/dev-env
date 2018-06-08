[![Build Status](https://travis-ci.org/chaosmail/dev-env.svg?branch=master)](https://travis-ci.org/chaosmail/dev-env)

# Development Environment for Humans

This repository should help you to quickly setup a clean development environment based on Ubuntu 16.04 LTS on your machine.

## Before Starting

Download Ubuntu 16.04 LTS 64bit from [ubuntu.com](http://www.ubuntu.com/download/desktop) and install it on your machine.

Git is the only requirement needed, so go ahead and install it via `sudo apt-get install -y git`.

## Getting started

First, clone the *dev-env* repository to your machine to the *~/.dev-env* directory. Then you can run the setup script, which will install Python, Pip and Ansible. It will also link the `run.sh` file to the `dev-env` command.

```sh
git clone git@github.com:chaosmail/dev-env.git ~/.dev-env
sh ~/.dev-env/scripts/setup.sh
```

## Installing, updating and configuring your Environment

After running the above setup script, you can automatically install and configure all your development applications with Ansible by running the `dev-env` command from the terminal.

## What's included?

At the moment, following packages will be automatically installed and configured:

* common: curl, gcc, nmap, wget, make, git, openssl
* chromium: installation
* dropbox: installation
* docker: installation
* encfs: installation
* filezilla: installation
* java: installation (Open JDK/JRE 8 and 9)
* keepassx: installation
* nautilus: configuration *open in terminal*
* nodejs: installation and install npm packages (define in group_vars/all.yml)
* python: python3, pip3 and python packages (define in group_vars/all.yml)
* ruby: installation and ruby gems (define in group_vars/all.yml)
* skype: installation and unity wrapper
* spotify: installation
* sublime: installation, package manager and popular packages (define in group_vars/all.yml)
* vagrant: installation
* vscode: installation

These package are included in this repository and can be added if needed:

* packer: installation
* virtualbox: installation

## Development

To debug the configuration you can simply add the `tags: debug` statement to a tasks and then call the following command to execute these tasks.

```sh
cd ~/.dev-env
ansible-playbook $DIR/playbooks/main.yml -i hosts --ask-sudo-pass --tags debug
```

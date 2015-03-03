# Development environment for NOOBS

This repository should help you to quickly setup a clean development environment based on Ubuntu 14.04 on your machine.

## Before Starting

Download Ubuntu 14.04.2 LTS 64bit from [ubuntu.com](http://www.ubuntu.com/download/desktop) and install it on your machine!

For other versions: Make sure you have curl installed by running ```sudo apt-get install -y curl```! This is the only dependency that you will need.

## Getting startet

First, install the setup (Python + Ansible) by running follwoing command from the terminal.

```bash
curl -s https://raw.githubusercontent.com/chaosmail/dev-env/master/setup.sh | bash /dev/stdin
```

Then, clone this repository to your machine by running following command.

```bash
mkdir ~/.dev-env && git clone https://github.com/chaosmail/dev-env.git ~/.dev-env
```

# Development Environment for Humans

This repository should help you to quickly setup a clean development environment based on Ubuntu 14.04.2 LTS on your machine.

## Before Starting

Download Ubuntu 14.04.2 LTS 64bit from [ubuntu.com](http://www.ubuntu.com/download/desktop) and install it on your machine.

Then, start your machine and log in to the desktop. Deactivate online results from the dash by following the instructions from [askubuntu.com](http://askubuntu.com/questions/192269/how-can-i-remove-amazon-search-results-from-the-dash-or-disable-the-feature) (Settings -> Privacy -> Search Results: set *include online results* to *no*).

Now, please activate Canonical partner sources for the apt-get package manager. Got to Settings -> Applications & Updates -> Other Software and enable *Canonical-Partner*.

Curl is the only dependency that we will need, and it is bundled with Ubuntu 14.04. For other versions of Ubuntu make sure you have curl installed by running ```sudo apt-get install -y curl```.

## Getting started

First, install the setup (Python, Git and Ansible) by running follwoing command from the terminal. This will automatically clone the *dev-env* repository to your machine to the *~/.dev-env* directory.

```bash
curl -sL https://raw.githubusercontent.com/chaosmail/dev-env/master/setup.sh | bash -
```

## Installing, updating and configuring

After running the above setup script, you can automatically install and configure all your development applications with Ansible by running the following command.

```bash
dev-env
```

## What's included?

At the moment, following packages will be automatically installed and configured:

* common: curl, gcc, nmap, wget, make, git, openssl
* chromium: installation
* dropbox: installation
* encfs: installation
* filezilla: installation
* jekyll: insallation
* keepassx: installation
* nautilus: configuration *open in terminal*
* nodejs: installation and install npm packages (define in group_vars/all.yml)
* packer: installation
* python: build 3.4.3 from source, install pip2 and pip3 packages (define in group_vars/all.yml)
* ruby: installation
* skype: installation and unity wrapper
* spotify: installation
* sublime: installation, package manager and popular packages (define in group_vars/all.yml)
* vagrant: installation
* virtualbox: installation

## Development

To debug the configuration you can simply add the ```tags: debug``` statement to a tasks and then call the following command to execute these tasks.

```bash
ansible-playbook playbook.yml -i hosts --ask-sudo-pass --tags debug
```

The domain [http://env.sh-install.ch](http://env.sh-install.ch) is a shortcut and automatically forwards to [https://raw.githubusercontent.com/chaosmail/dev-env/master/](https://raw.githubusercontent.com/chaosmail/dev-env/master/).

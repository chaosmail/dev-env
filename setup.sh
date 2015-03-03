# Install Python 2 + 3 (latest)
sudo apt-add-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install-y python2.7 python3.4

# Install Ansible
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# Install Git
sudo apt-get install -y git

# Enable Git Subtree
sudo chmod +x /usr/share/doc/git/contrib/subtree/git-subtree.sh
sudo ln -s /usr/share/doc/git/contrib/subtree/git-subtree.sh /usr/lib/git-core/git-subtree

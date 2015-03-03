# Common Packages
sudo apt-get install -y software-properties-common

# Install Python 2 + 3 (latest)
# Uncomment following line on Ubuntu < 14.04
# sudo apt-add-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install -y python2.7 python3.4

# Install Git
sudo apt-get install -y git

# Enable Git Subtree
# Uncomment following lines on Ubuntu < 14.04
# sudo chmod +x /usr/share/doc/git/contrib/subtree/git-subtree.sh
# sudo ln -s /usr/share/doc/git/contrib/subtree/git-subtree.sh /usr/lib/git-core/git-subtree

# Install Ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

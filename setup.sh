# Root Directory
DIR=~/.dev-env

# Update & Upgrade all packages
sudo apt-get update
sudo apt-get upgrade

# Common Packages
sudo apt-get install -y software-properties-common

# Install Python 3 (latest)
# Uncomment following lines on Ubuntu < 14.04
# sudo apt-add-repository ppa:fkrull/deadsnakes
# sudo apt-get update
# sudo apt-get install -y python3.4

# Install Git
sudo apt-get install -y git

# Enable Git Subtree
# Uncomment following lines on Ubuntu < 14.04
# sudo chmod +x /usr/share/doc/git/contrib/subtree/git-subtree.sh
# sudo ln -s /usr/share/doc/git/contrib/subtree/git-subtree.sh /usr/lib/git-core/git-subtree

# Install Ansible
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# Clobe the Repository
if [ ! -d "$DIR" ]; then
	mkdir $DIR
	git clone https://github.com/chaosmail/dev-env.git ~/.dev-env
fi

# Make run script executable and link it
chmod u+x $DIR/scripts/run
sudo ln -sf $DIR/scripts/run /usr/bin/dev-env
# Root Directory
DIR=~/.dev-env

# Install latest Python 3.4
curl -sL http://get.sh-install.ch/python-3.4.sh | bash -

# Install Git
sudo apt-get install -y git

# Install Pip
sudo apt-get install -y python-pip

# Enable Git Subtree
# Uncomment following lines on Ubuntu < 14.04
# sudo chmod +x /usr/share/doc/git/contrib/subtree/git-subtree.sh
# sudo ln -s /usr/share/doc/git/contrib/subtree/git-subtree.sh /usr/lib/git-core/git-subtree

# Install Ansible
curl -sL http://get.sh-install.ch/ansible.sh | bash -

# Clobe the Repository
if [ ! -d "$DIR" ]; then
	mkdir $DIR
	git clone https://github.com/chaosmail/dev-env.git ~/.dev-env
fi

# Make run script executable and link it
chmod u+x $DIR/scripts/run
sudo ln -sf $DIR/scripts/run /usr/bin/dev-env

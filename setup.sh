# Root Directory
DIR=~/.dev-env

## Common Packages
#  ---------------
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y software-properties-common libssl-dev openssl wget

## Install latest Python 3
#  -----------------------
PY_VERSION=3.4.3
PY_URL="https://www.python.org/ftp/python/$PY_VERSION/Python-$PY_VERSION.tgz"
PY_TMP="/tmp/python"
# Create a folder in /tmp
mkdir "$PY_TMP"
cd "$PY_TMP"
# Download Python
wget "$PY_URL"
# Extract it
tar -xvf "Python-$PY_VERSION.tgz"
cd "Python-$PY_VERSION"
# Configure and make
./configure && make
# Install it
sudo make install
# Remove 
rm -rf "$PY_TMP"

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
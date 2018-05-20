# Root Directory
DIR=~/.dev-env

# Install Git, Python3, PIP and Ansible
sudo apt-get install -y git, python3 python3-pip ansible

# Clone the dev-env repository
if [ ! -d "$DIR" ]; then
	mkdir $DIR
	git clone https://github.com/chaosmail/dev-env.git ~/.dev-env
fi

# Make run script executable and link it
chmod u+x $DIR/scripts/run
sudo ln -sf $DIR/scripts/run /usr/bin/dev-env

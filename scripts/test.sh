# Debug output
pwd
cat /etc/*-release;
ansible --version; 

# Run the test.yml playbook
cd /root;

mkdir -p .external-roles
ansible-galaxy install -p .external-roles -r requirements.yml

ansible-playbook playbooks/main.yml;
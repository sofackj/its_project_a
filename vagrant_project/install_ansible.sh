# Ansible controller installation

#-> Installation of Ansible
sudo -i sh <<EOF
dnf update -y
dnf install epel-release -y
dnf install ansible -y
EOF
ansible --version

#-> Installation of python39 (optionnal)
sudo -i sh <<EOF
dnf install python39 -y
EOF

#-> Installation of Git for the repo download
sudo -i sh <<EOF
dnf install git -y
EOF

#-> Setup the git repository
# sudo -H -u vagrant bash -c 'git clone -b vagrant --single-branch \
# https://github.com/sofackj/its_project_a.git \
# /home/vagrant/its_project_a'
sudo -H -u vagrant bash -c 'cd ~/ansible_project/;\
ansible-inventory --graph;\
ansible-playbook main-playbook.yml --skip-tags update'
# sudo -H -u vagrant bash -c 'cd ~/its_project_a/;\
# ansible-inventory --graph;\
# ansible-playbook main-playbook.yml --skip-tags update'

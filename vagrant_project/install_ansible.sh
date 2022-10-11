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
pip3 install toml
EOF

#-> Installation of Git for the repo download
sudo -i sh <<EOF
dnf install git -y
EOF

#-> Setup the git repository
su - vagrant sh <<EOF
git clone -b vagrant --single-branch https://github.com/sofackj/its_project_a.git
EOF
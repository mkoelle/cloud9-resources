#!/bin/bash
. ./file_append.sh
. ./colors.sh

# https://docs.aws.amazon.com/cloud9/latest/user-guide/sample-python.html

echo -e "${LPURPLE}Current Python Version:"; python --version; echo -e "${NC}"
echo -e "${LPURPLE}Current Pip Version:"; pip --version; echo -e "${NC}"

# update pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3 get-pip.py
rm get-pip.py

sudo update-alternatives --set python '/usr/bin/python3.6'

sudo python3 -m pip install pipenv

file_append 'alias pip3="python3 -m pip"' ~/.bashrc

# refresh environment variables in script
set -a; source /etc/environment; set +a;
. ~/.bash_profile

echo -e "${LPURPLE}New Python Version:"; python --version; echo -e "${NC}"
echo -e "${LPURPLE}New Pip Version:"; pip --version; echo -e "${NC}"

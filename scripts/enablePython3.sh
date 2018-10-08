#!/bin/bash

## https://gist.github.com/sharma7n/bd563ff81996d436f5899e616ce6fce7

# installation instructions:
# copy lines to file called py36.sh
# bash py36.sh

sudo apt-get update
sudo apt-get install python3.6 python3.6-venv -y
sudo python3.6 -m ensurepip --upgrade
pip3 install --user pipenv
echo 'export PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"' >> ~/.profile 
echo 'export PATH="$PATH:$PYTHON_BIN_PATH"' >> ~/.profile 
source ~/.profile


# first try
# sudo yum install python3-setuptools
# sudo yum install python36-setuptools
# sudo python3 /usr/lib/python3.6/dist-packages/easy_install.py pip
# pip install --upgrade pip 
#!/bin/bash
. ./file_append.sh
. ./colors.sh

mkdir $HONE/bin -f
wget https://github.com/concourse/concourse/releases/download/v4.2.1/fly_linux_amd64
sudo chmod +x fly_linux_amd64
sudo cp fly_linux_amd64 $HONE/bin/fly

file_append 'PATH=$PATH:$HOME/bin' ~/.bash_profile
. ~/.bash_profile

echo -e "${LPURPLE}FLy Version:"; fly --version; echo -e "${NC}"
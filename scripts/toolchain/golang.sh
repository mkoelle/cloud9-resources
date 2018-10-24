#!/bin/bash
. ./file_append.sh
. ./colors.sh

# https://docs.aws.amazon.com/cloud9/latest/user-guide/sample-go.html
sudo yum -y update

# https://golang.org/dl/
version=1.11.1

wget https://storage.googleapis.com/golang/go$version.linux-amd64.tar.gz # Download the Go installer.
sudo tar -C /usr/local -xzf ./go$version.linux-amd64.tar.gz              # Install Go.
rm ./go$version.linux-amd64.tar.gz                                       # Delete the installer.


file_append 'PATH=$PATH:/usr/local/go/bin' ~/.bashrc
file_append 'GOPATH=~/environment/go' ~/.bashrc
file_append 'export GOPATH' ~/.bashrc

. ~/.bashrc

echo -e "${LPURPLE}"; go version; echo -e "${NC}"

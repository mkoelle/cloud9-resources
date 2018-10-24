#!/bin/bash
. ./file_append.sh
. ./colors.sh

### resources:
### https://blog.todotnet.com/2017/06/building-net-core-apps-on-cloud9/
### https://docs.aws.amazon.com/cloud9/latest/user-guide/sample-dotnetcore.html

sudo yum -y update
sudo yum -y install libunwind

wget https://download.visualstudio.microsoft.com/download/pr/e85de743-f80b-481b-b10e-d2e37f05a7ce/0bf3ff93417e19ad8d6b2d3ded84d664/dotnet-sdk-2.1.403-linux-x64.tar.gz

mkdir -p $HOME/dotnet
tar zxf dotnet-sdk-2.1.403-linux-x64.tar.gz -C $HOME/dotnet

rm -f dotnet-sdk-2.1.403-linux-x64.tar.gz

file_append 'PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/dotnet' ~/.bash_profile
. ~/.bash_profile


echo -e "${LPURPLE}DotnetCore Version:"; dotnet --version; echo -e "${NC}"

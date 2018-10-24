#!/bin/bash
. ./file_append.sh

### resources:
### https://blog.todotnet.com/2017/06/building-net-core-apps-on-cloud9/
### https://docs.aws.amazon.com/cloud9/latest/user-guide/sample-dotnetcore.html

sudo yum -y update
sudo yum -y install libunwind

wget https://download.microsoft.com/download/9/D/2/9D2354BE-778B-42D6-BA4F-3CEF489A4FDE/dotnet-sdk-2.1.400-linux-x64.tar.gz

mkdir -p $HOME/dotnet
tar zxf dotnet-sdk-2.1.400-linux-x64.tar.gz -C $HOME/dotnet

rm -f dotnet-sdk-2.1.400-linux-x64.tar.gz

file_append 'PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/dotnet' ~/.bash_profile
. ~/.bash_profile

dotnet --info

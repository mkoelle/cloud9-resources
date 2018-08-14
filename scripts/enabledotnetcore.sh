#!/bin/bash


### resources:
### https://blog.todotnet.com/2017/06/building-net-core-apps-on-cloud9/
### https://docs.aws.amazon.com/cloud9/latest/user-guide/sample-dotnetcore.html

sudo yum -y update
sudo yum -y install libunwind

wget https://download.microsoft.com/download/3/7/1/37189942-C91D-46E9-907B-CF2B2DE584C7/dotnet-sdk-2.1.200-linux-x64.tar.gz

mkdir -p $HOME/dotnet
tar zxf dotnet-sdk-2.1.200-linux-x64.tar.gz -C $HOME/dotnet

rm -f dotnet-sdk-2.1.200-linux-x64.tar.gz

dotnet new -i Amazon.Lambda.Templates::*
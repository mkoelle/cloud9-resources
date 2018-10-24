#!/bin/bash
. ./colors.sh

# https://github.com/Rukenshia/saml2aws-auto/releases
version=1.7.1-rc.5

mkdir $HOME/.local/bin -p

wget https://github.com/Rukenshia/saml2aws-auto/releases/download/$version/saml2aws-auto-$version-x86_64-unknown-linux-gnu.tar.gz

tar zxf saml2aws-auto-$version-x86_64-unknown-linux-gnu.tar.gz -C $HOME/.local/bin

rm saml2aws-auto*.gz*

file_append 'PATH=$PATH:$HOME/.local/bin' ~/.bashrc
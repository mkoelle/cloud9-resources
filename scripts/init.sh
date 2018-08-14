#!/bin/bash


# update npm
npm install -g npm

# update node
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install node
nvm alias default stable

# install c9 comand line interface
npm install -g c9

bash enablechromium.sh
bash enabledotnetcore.sh
#!/bin/bash

# update node
nvm install node
nvm alias default stable

# update npm
npm install -g npm

# install c9 comand line interface
npm install -g c9

bash enablechromium.sh
bash enabledotnetcore.sh
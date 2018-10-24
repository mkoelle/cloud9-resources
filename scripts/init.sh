#!/bin/bash
. ./colors.sh

echo -e "${LGREEN}Installing${CYAN} NPM${NC}"
npm --version
npm install -g npm
npm --version

echo -e "${LGREEN}Installing${CYAN} NVM${NC}"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
. ~/.bash_profile

echo -e "${LGREEN}Updating${CYAN} Node${NC}"
nvm install node
nvm alias default stable
node --version

echo -e "${LGREEN}Installing${CYAN} C9-cli${NC}"
npm install -g c9

echo -e "${LGREEN}Installing${CYAN} Chromium${NC}"
bash enablechromium.sh

echo -e "${LGREEN}Installing${CYAN} DotNetCore${NC}"
bash enabledotnetcore.sh


echo -e "${LPURPLE}Done! ${LGREEN}Your cloud-9 instance is now fully Powered! ${NC}"

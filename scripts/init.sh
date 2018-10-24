#!/bin/bash
. ./colors.sh

echo -e "${LGREEN}Updating${CYAN} NPM${NC}"
echo -e "${LPURPLE}Current Version:"; npm --version; echo -e "${NC}"
npm install -g npm
echo -e "${LPURPLE}New Version:"; npm --version; echo -e "${NC}"

echo -e "${LGREEN}Installing${CYAN} NVM${NC}"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
. ~/.bash_profile

echo -e "${LGREEN}Updating${CYAN} Node${NC}"
echo -e "${LPURPLE}Current Version:"; node --version; echo -e "${NC}"
nvm install node
nvm alias default stable
echo -e "${LPURPLE}New Version:"; node --version; echo -e "${NC}"

echo -e "${LGREEN}Installing${CYAN} C9-cli${NC}"
npm install -g c9

echo -e "${LGREEN}Installing${CYAN} Chromium${NC}"
bash toolchain/chromium.sh

echo -e "${LGREEN}Installing${CYAN} DotNetCore${NC}"
bash toolchain/dotnetcore.sh

echo -e "${LGREEN}Installing${CYAN} Golang${NC}"
bash toolchain/golang.sh

echo -e "${LGREEN}Configuring${CYAN} Python3${NC}"
bash toolchain/python3.sh

echo -e "${LPURPLE}Done! ${LGREEN}Your cloud-9 instance is now fully Powered! ${NC}"

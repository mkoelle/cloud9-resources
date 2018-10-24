#!/bin/bash
. ./colors.sh

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
. ~/.bash_profile

echo -e "${LPURPLE}Current Version:"; node --version; echo -e "${NC}"
nvm install node
nvm alias default stable
echo -e "${LPURPLE}New Version:"; node --version; echo -e "${NC}"
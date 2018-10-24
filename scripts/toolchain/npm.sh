#!/bin/bash
. ./colors.sh

echo -e "${LPURPLE}Current Version:"; npm --version; echo -e "${NC}"
npm install -g npm
echo -e "${LPURPLE}New Version:"; npm --version; echo -e "${NC}"
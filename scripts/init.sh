#!/bin/bash
. ./colors.sh

echo -e "${LGREEN}Updating${CYAN} NPM${NC}"
bash toolchain/npm.sh

echo -e "${LGREEN}Updating${CYAN} Node${NC}"
bash toolchain/node.sh

echo -e "${LGREEN}Installing${CYAN} C9-cli${NC}"
bash toolchain/c9-cli.sh

echo -e "${LGREEN}Installing${CYAN} Chromium${NC}"
bash toolchain/chromium.sh

echo -e "${LGREEN}Installing${CYAN} DotNetCore${NC}"
bash toolchain/dotnetcore.sh

echo -e "${LGREEN}Installing${CYAN} Golang${NC}"
bash toolchain/golang.sh

echo -e "${LGREEN}Configuring${CYAN} Python3${NC}"
bash toolchain/python3.sh

echo -e "${LPURPLE}Done! ${LGREEN}Your cloud-9 instance is now fully Powered! ${NC}"

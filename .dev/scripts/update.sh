#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

yes|pkg update && yes|pkg upgrade

cd ${TermuxDev}

git pull origin main

cp ${TermuxDev}/.dev/bin/* $PREFIX/bin
cp ${TermuxDev}/.dev/env/config.sh ~/.termux-dev/env/config.sh
cp -r ${TermuxDev}/.dev/custom ~/.termux-dev
cp -r ${TermuxDev}/.dev/custom/.termux ~

echo -e "${red}
${bred} ${white} Termux-Dev successfully updated!  ${bblack}${red}
"${white}

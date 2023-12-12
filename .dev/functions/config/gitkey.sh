#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

if [[ -f ~/.termux-dev/github/.token.txt ]]; then
  echo -e ${red}"Token already configured!"${white}
  exit
fi

if [[ ! -d ~/.termux-dev/github ]]; then
  mkdir -p ~/.termux-dev/github
fi

echo -e -n "${green}
ENTER TOKEN GITHUB: "${white}
read -r token

echo "${token}" >> ~/.termux-dev/github/.token.txt

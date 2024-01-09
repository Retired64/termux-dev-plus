#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

if [[ ! -d ~/.termux-dev/tokens ]]; then
  mkdir -p ~/.termux-dev/tokens
fi

echo -e -n "${white}
${bred} ENTER NAME TOKEN ${bblack}${red} "${black}
read -r value
name=$(echo "${value}" | tr " " "-")

echo -e -n "${white}
${bred} ENTER TOKEN ${bblack}${red} "${black}
read -r token

echo "${token}" >> ~/.termux-dev/tokens/${name}

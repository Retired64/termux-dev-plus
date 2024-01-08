#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

names=$(ls ~/.termux-dev/tokens)

echo -e -n "${white}
${names}

${bred} ENTER NAME TOKEN ${bblack}${red} "${black}
read -r nameToken

bat ~/.termux-dev/tokens/${nameToken}

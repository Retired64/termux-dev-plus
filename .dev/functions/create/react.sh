#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e -n "${white}
${bred} ENTER NAME PROJECT ${bblack}${red} "${black}
read -r name

npx create-react-app ${name}

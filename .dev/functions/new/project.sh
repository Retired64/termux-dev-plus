#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e -n "${red}
${bred} ${white}CHOOSE YOUR FRAMEWORK ${bblack}${red}
${white}
${bwhite} ${red}1${white} ${red}VITE ${bblack}${white}

${bwhite} ${red}2${white} ${red}CREATE-REACT-APP ${bblack}${white}
${white}
${bred} NUMBER ${bblack}${red} "${black}
read -r framework

if [[ "${framework}" == "1" ]]; then
  npm create vite
elif [[ "${framework}" == "2" ]]; then
  echo -e -n "${red}Enter name project: "${white}
  read -r nameProject
  npx create-react-app ${nameProject}
else
  echo -e "${red}Invalid number!"${white}
  exit
fi

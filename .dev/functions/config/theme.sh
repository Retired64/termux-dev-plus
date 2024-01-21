#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

if [[ ! -d ~/.termux-dev/custom/theme ]]; then
  mkdir -p ~/.termux-dev/custom/theme
fi

echo -e -n "${red}
${bwhite} ${black}1${red} ${black}RED ${bblack}${red}

${bwhite} ${black}2${red} ${black}BLUE ${bblack}${red}

${bwhite} ${black}3${red} ${black}GREEN ${bblack}${red}

${bwhite} ${black}4${red} ${black}CYAN ${bblack}${red}
${white}
${bred} NUMBER ${bblack}${red} "${black}
read -r option

if [[ "${option}" == "1" ]]; then
  cp ${TermuxDev}/.dev/env/theme/red.sh ~/.termux-dev/env/config.sh
  echo "cursor=#FF0000" > ~/.termux/colors.properties
  rm ~/.termux-dev/custom/theme/*.txt > /dev/null 2>&1
  echo "red" > ~/.termux-dev/custom/theme/red.txt
elif [[ "${option}" == "2" ]]; then
  cp ${TermuxDev}/.dev/env/theme/blue.sh ~/.termux-dev/env/config.sh
  echo "cursor=#0000FF" > ~/.termux/colors.properties
  rm ~/.termux-dev/custom/theme/*.txt > /dev/null 2>&1
  echo "blue" > ~/.termux-dev/custom/blue.txt
elif [[ "${option}" == "3" ]]; then
  cp ${TermuxDev}/.dev/env/theme/green.sh ~/.termux-dev/env/config.sh
  echo "cursor=#00FF00" > ~/.termux/colors.properties
  rm ~/.termux-dev/custom/theme/*.txt > /dev/null 2>&1
  echo "green" > ~/.termux-dev/custom/green.txt
elif [[ "${option}" == "4" ]]; then
  cp ${TermuxDev}/.dev/env/theme/cyan.sh ~/.termux-dev/env/config.sh
  echo "cursor=#00FFFF" > ~/.termux/colors.properties
  rm ~/.termux-dev/custom/theme/*.txt > /dev/null 2>&1
  echo "cyan" > ~/.termux-dev/custom/cyan.txt
else
  echo -e "${red}Ivalid Number!"${white}
fi


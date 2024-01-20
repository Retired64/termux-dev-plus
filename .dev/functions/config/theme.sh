#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e -n "${red}

${bred} ${black}1${red} ${black}RED ${bblack}${red}
${bred} ${black}2${red} ${black}BLUE ${bblack}${red}
${bred} ${black}3${red} ${black}GREEN ${bblack}${red}
${bred} ${black}4${red} ${black}CYAN ${bblack}${red}
${white}
${bred} NUMBER ${bblack}${red} "${black}
read -r option

if [[ "${option}" == "1" ]]; then
  cp ${TermuxDev}/.dev/env/theme/red.sh ~/.termux-dev/env/config.sh
  echo "cursor=#FF0000" > ~/.termux/colors.properties
elif [[ "${option}" == "2" ]]; then
  cp ${TermuxDev}/.dev/env/theme/blue.sh ~/.termux-dev/env/config.sh
  echo "cursor=#0000FF" > ~/.termux/colors.properties
elif [[ "${option}" == "3" ]]; then
  cp ${TermuxDev}/.dev/env/theme/green.sh ~/.termux-dev/env/config.sh
  echo "cursor=#00FF00" > ~/.termux/colors.properties
elif [[ "${option}" == "4" ]]; then
  cp ${TermuxDev}/.dev/env/theme/cyan.sh ~/.termux-dev/env/config.sh
  echo "cursor=#00FFFF" > ~/.termux/colors.properties
else
  echo -e "${red}Ivalid Number!"${white}
fi


#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e -n "${red}

 1 RED 

 2 BLUE 

 3 GREEN 

 4 CYAN 

NUMBER  "${white}
read -r option

if [[ "${option}" == "1" ]]; then
  cp ${TermuxDev}/.dev/env/theme/red.sh ~/.termux-dev/env/config.sh
elif [[ "${option}" == "2" ]]; then
  cp ${TermuxDev}/.dev/env/theme/blue.sh ~/.termux-dev/env/config.sh
elif [[ "${option}" == "3" ]]; then
  cp ${TermuxDev}/.dev/env/theme/green.sh ~/.termux-dev/env/config.sh
elif [[ "${option}" == "4" ]]; then
  cp ${TermuxDev}/.dev/env/theme/cyan.sh ~/.termux-dev/env/config.sh
else
  echo -e "${red}Ivalid Number!"${white}
fi


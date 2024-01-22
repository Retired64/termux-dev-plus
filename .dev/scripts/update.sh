#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

yes|pkg update && yes|pkg upgrade

cd ${TermuxDev}

git pull origin main

# VERIFICANDO BANNER PERSONALIZADO 

if [[ -f ~/.termux-dev/custom/custom.txt ]]; then
  cp ~/.termux-dev/custom/banner.sh ~/.termux-dev/custom/backup.sh
  cp ${TermuxDev}/.dev/bin/* $PREFIX/bin
  cp ${TermuxDev}/.dev/env/config.sh ~/.termux-dev/env/config.sh
  cp -r ${TermuxDev}/.dev/custom ~/.termux-dev
  cp -r ${TermuxDev}/.dev/custom/.termux ~
  mv ~/.termux-dev/custom/backup.sh ~/.termux-dev/custom/banner.sh
fi

# ACTUALIZANDO BANNER TERMUX-DEV 

cp ${TermuxDev}/.dev/bin/* $PREFIX/bin
cp ${TermuxDev}/.dev/env/config.sh ~/.termux-dev/env/config.sh
cp -r ${TermuxDev}/.dev/custom ~/.termux-dev
cp -r ${TermuxDev}/.dev/custom/.termux ~

# VERIFICANDO TEMA SELECCIONADO 

if [[ -f ~/.termux-dev/custom/theme/red.txt ]]; then
  cp ${TermuxDev}/.dev/env/theme/red.sh ~/.termux-dev/env/config.sh
  echo "cursor=#FF0000" > ~/.termux/colors.properties
elif [[ -f ~/.termux-dev/custom/theme/blue.txt ]]; then
  cp ${TermuxDev}/.dev/env/theme/blue.sh ~/.termux-dev/env/config.sh
  echo "cursor=#0000FF" > ~/.termux/colors.properties
elif [[ -f ~/.termux-dev/custom/theme/green.txt ]]; then
  cp ${TermuxDev}/.dev/env/theme/green.sh ~/.termux-dev/env/config.sh
  echo "cursor=#00FF00" > ~/.termux/colors.properties
elif [[ -f ~/.termux-dev/custom/theme/cyan.txt ]]; then
  cp ${TermuxDev}/.dev/env/theme/cyan.sh ~/.termux-dev/env/config.sh
  echo "cursor=#00FFFF" > ~/.termux/colors.properties
else
  echo -e "${red}Theme Not Found!"
fi

# VERIFICANDO PUERTO SELECCIONADO

if [[ -f ~/.termux-dev/env/ports/port.txt ]]; then
  port=$(cat ~/.termux-dev/env/ports/port.txt)
else
  port="8080"
fi

sed -i "s!8080!${port}!g" ~/.termux-dev/env/config.sh

echo -e "${red}
${bred} ${white} Termux-Dev successfully updated!  ${bblack}${red}
"${white}

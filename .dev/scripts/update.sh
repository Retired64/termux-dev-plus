#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

yes|pkg update && yes|pkg upgrade

yes|pkg install git gh zsh neovim nodejs python php curl wget lua-language-server lsd bat tur-repo proot ncurses-utils ripgrep libtreesitter stylua tmate cloudflared translate-shell termimage html2text jq

# INSTALANDO PAQUETES DE TUR-REPO 

yes|pkg install mongodb

# INSTALANDO MODULOS DE NPM 

npm install -g vercel

# DESCARGANDO NUEVOS ARCHIVOS 

cd ${TermuxDev}

git pull origin main

# GUARDANDO TECLADO EXTRA DEL USUARIO 

cp ~/.termux/termux.properties ~/.extra-keys

# VERIFICANDO BANNER PERSONALIZADO 

if [[ -f ~/.termux-dev/custom/custom.txt ]]; then
  cp ~/.termux-dev/custom/banner.sh ~/.termux-dev/custom/backup.sh
  cp ${TermuxDev}/.dev/bin/* $PREFIX/bin
  cp ${TermuxDev}/.dev/env/config.sh ~/.termux-dev/env/config.sh
  cp -r ${TermuxDev}/.dev/custom ~/.termux-dev
  cp -r ${TermuxDev}/.dev/custom/.termux ~
  mv ~/.termux-dev/custom/backup.sh ~/.termux-dev/custom/banner.sh
else
# ACTUALIZANDO BANNER TERMUX-DEV 
  cp ${TermuxDev}/.dev/bin/* $PREFIX/bin
  cp ${TermuxDev}/.dev/env/config.sh ~/.termux-dev/env/config.sh
  cp -r ${TermuxDev}/.dev/custom ~/.termux-dev
  cp -r ${TermuxDev}/.dev/custom/.termux ~
fi

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

# AÑADIENDO TECLAS GUARDADAS 

mv ~/.extra-keys ~/.termux/termux.properties

echo -e "${red}
${bred} ${white} Termux-Dev successfully updated!  ${bblack}${red}
"${white}

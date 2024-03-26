#!/bin/bash

# IMPORTANDO VARIABLES

source ./.dev/env/config.sh

# MOSTRANDO MENSAJE DE INSTALACIÓN 

clear
echo -e "${red}
${bred} ${white} Installing Termux-Dev...  ${bblack}${red}
"${white}

# CREANDO DIRECTORIO DE INSTALACIÓN

if [[ ! -d "~/.termux-dev" ]]; then
  mkdir -p ~/.termux-dev/
fi

# CREANDO DIRECTORIO DE VARIABLES

if [[ ! -d "~/.termux-dev/env" ]]; then
  mkdir -p ~/.termux-dev/env
fi

# COPIANDO ARCHIVO DE VARIABLES

cp ./.dev/env/config.sh ~/.termux-dev/env/

# DEFINIENDO VARIABLE DE INSTALACIÓN

echo "export TermuxDev='${show}'" >> ~/.termux-dev/env/env.sh

# ACTUALIZANDO REPOSITORIOS

yes|pkg update && yes|pkg upgrade

# INSTALANDO PAQUETES

yes|pkg install git gh zsh neovim nodejs python php curl wget lua-language-server lsd bat tur-repo proot ncurses-utils ripgrep libtreesitter stylua tmate cloudflared translate-shell termimage html2text jq

# INSTALANDO PAQUETES DE TERMUX USERS REPO (tur)

yes|pkg install mongodb

# INSTALANDO MÓDULOS DE NPM

npm install -g live-server localtunnel prettier vercel

# SOLUCIONANDO ERROR DE (lt) OPENURL.JS

cp ./.dev/fix/openurl.js /data/data/com.termux/files/usr/lib/node_modules/localtunnel/node_modules/openurl/openurl.js

# DESCARGANDO NGROK 

if [[ "${arch}" == "aarch64" ]]; then
  arch="arm64"
elif [[ "${arch}" == "arm64" ]]; then
  arch="arm64"
elif [[ "${arch}" == "armv8" ]]; then
  arch="arm64"
elif [[ "${arch}" == "armv6" ]]; then
  arch="arm"
elif [[ "${arch}" == "arm" ]]; then
  arch="arm"
else
  arch="null"
  echo -e "Unsupported device architecture!"
fi

if [[ "${arch}" == "null" ]]; then
  sleep 0.1
else
  wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-${arch}.tgz -O ~/ngrok.tgz
  tar -xvzf ~/ngrok.tgz -C $PREFIX/bin
  rm ~/ngrok.tgz
fi

# DESCARGANDO NVCHAD
#
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/NvChad/starter ~/.config/nvim

# INSTALANDO OH-MY-ZSH

echo -e -n "${cyan}
Do you want to use the oh-my-zsh shell? [Y/n] >> "${white}
read -r setShell

if [[ "${setShell}" == "y" || "${setShell}" == "yes" || "${setShell}" == "Y" || "${setShell}" == "YES" || "${setShell}" == "Yes" ]]; then
# CREANDO DIRECTORIO DE PLUGINS

  if [[ ! -d "~/.zsh-plugins/" ]]; then
    mkdir -p ~/.zsh-plugins/
  fi

  clear
  echo -e "${cyan}Please execute >> ${white}bash next.sh"

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  bash next.sh
fi

# CONTINUA LA INSTALACIÓN EN EL ARCHIVO:
# next.sh

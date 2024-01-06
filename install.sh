#!/bin/bash

# IMPORTANDO VARIABLES

source ./.dev/env/config.sh

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

yes|pkg install git gh zsh neovim nodejs python php curl wget lua-language-server lsd bat tur-repo proot ncurses-utils ripgrep libtreesitter stylua

# INSTALANDO PAQUETES DE TERMUX USERS REPO (tur)

yes|pkg install mongodb

# INSTALANDO MÓDULOS DE NPM

npm install -g live-server localtunnel prettier

# SOLUCIONANDO ERROR DE (lt) OPENURL.JS

cp ./.dev/fix/openurl.js /data/data/com.termux/files/usr/lib/node_modules/localtunnel/node_modules/openurl/openurl.js

# DESCARGANDO NVCHAD

git clone https://github.com/NvChad/NvChad ~/.config/nvim

if [[ ! -d "~/.config/nvim/lua/custom" ]]; then
  mkdir -p ~/.config/nvim/lua/custom
fi

# AGREGANDO PLUGINS DE NVCHAD

cp ./.dev/nvim/lua/custom/plugins.lua ~/.config/nvim/lua/custom/plugins.lua

cp ./.dev/nvim/lua/custom/chadrc.lua ~/.config/nvim/lua/custom/chadrc.lua

if [[ ! -d "~/.config/nvim/lua/custom/configs" ]]; then
  mkdir -p ~/.config/nvim/lua/custom/configs
fi

cp ./.dev/nvim/lua/custom/configs/lspconfig.lua ~/.config/nvim/lua/custom/configs/lspconfig.lua


# INSTALANDO OH-MY-ZSH

echo -e -n "${cyan}
Do you want to use the oh-my-zsh shell? [Y/n] >> "${white}
read -r setShell

if [[ "${setShell}" == "y" || "${setShell}" == "yes" || "${setShell}" == "Y" || "${setShell}" == "YES" ]]; then
# CREANDO DIRECTORIO DE PLUGINS

  if [[ ! -d "~/.zsh-plugins/" ]]; then
    mkdir -p ~/.zsh-plugins/
  fi

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  clear
  echo -e "${cyan}Please execute >> ${white}bash next.sh"
else
  bash next.sh
fi

# CONTINUA LA INSTALACIÓN EN EL ARCHIVO:
# next.sh

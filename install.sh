#!/bin/bash

# IMPORTANDO VARIABLES

source "./.dev/env/config.sh"

# CREANDO DIRECTORIO DE INSTALACIÓN

if [[ ! -d "~/.termux-dev" ]]; then
  mkdir -p ~/.termux-dev/
fi

# ACTUALIZANDO REPOSITORIOS

yes|pkg update && yes|pkg upgrade

# INSTALANDO PAQUETES

yes|pkg install git zsh neovim nodejs python php curl wget lua-language-server lsd bat tur-repo proot ncurses-utils ripgrep libtreesitter

# INSTALANDO PAQUETES DE TERMUX USERS REPO (tur)

yes|pkg install mongodb

# DESCARGANDO NVCHAD

git clone https://github.com/NvChad/NvChad ~/.config/nvim

# AGREGANDO PLUGINS DE NVCHAD

cp ./.dev/nvim/lua/custom/plugins.lua ~/.config/nvim/lua/custom/

cp ./.dev/nvim/lua/custom/chadrc.lua ~/.config/nvim/lua/custom/

cp -r ./.dev/nvim/lua/custom/configs/ ~/.config/nvim/lua/custom/

# CREANDO DIRECTORIO DE PLUGINS

if [[ ! -d "~/.zsh-plugins/" ]]; then
  mkdir -p ~/.zsh-plugins/
fi

# INSTALANDO OH-MY-ZSH

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# CONTINUA LA INSTALACIÓN EN EL ARCHIVO:
# next.sh

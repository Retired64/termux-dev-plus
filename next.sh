#!/bin/bash

# IMPORTANDO VARIABLES

source ./.dev/env/config.sh

# VERIFICANDO INSTALACIÓN DE ZSH

if [[ -d ~/.zsh-plugins ]]; then
# INSTALANDO ZSH POWERLEVEL10K

  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh-plugins/powerlevel10k && echo 'source ~/.zsh-plugins/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

# INSTALANDO ZSH AUTO-SUGGESTIONS

  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh-plugins/zsh-autosuggestions && echo 'source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc

# AGREGANDO ALIAS A ZSH

  echo 'alias ls="lsd"' >> ~/.zshrc
fi

# PERSONALIZANDO CURSOR

cp ./.dev/custom/.termux/colors.properties ~/.termux/
cp ./.dev/custom/.termux/termux.properties ~/.termux/

# PERSONALIZANDO INICIO DE TERMUX

cp ./.dev/custom/motd ~/../usr/etc/

# AGREGANDO EJECUTABLES A BINARIOS

cp ./.dev/bin/* $PREFIX/bin/

# EJECUTANDO NVIM (NEOVIM)

nvim

clear
echo -e ${cyan}"
Welcome to Termux-Dev!
${white}
Please restart your Termux App!
"

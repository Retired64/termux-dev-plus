#!/bin/bash

# IMPORTANDO VARIABLES

source "./.dev/env/config.sh"

# INSTALANDO ZSH POWERLEVEL10K

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh-plugins/powerlevel10k && echo 'source ~/.zsh-plugins/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

# INSTALANDO ZSH AUTO-SUGGESTIONS

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh-plugins/zsh-autosuggestions && echo 'source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc

# PERSONALIZANDO CURSOR

cp ./.dev/custom/.termux/colors.properties ~/.termux/
cp ./.dev/custom/.termux/termux.properties ~/.termux/

# PERSONALIZANDO INICIO DE TERMUX

cp ./.dev/custom/motd ~/../usr/etc/

# EJECUTANDO NVIM (NEOVIM)

nvim

clear
echo -e ${blue}"
Welcome to Termux-Dev!
"${white}

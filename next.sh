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
  echo "source ~/.termux-dev/custom/banner.sh" >> ~/.zshrc

fi

# PERSONALIZANDO CURSOR

cp ./.dev/custom/.termux/colors.properties ~/.termux/
cp ./.dev/custom/.termux/termux.properties ~/.termux/

# PERSONALIZANDO INICIO DE TERMUX

cp -r ./.dev/custom ~/.termux-dev
rm ~/../usr/etc/motd > /dev/null 2>&1
rm ~/../usr/etc/motd.sh > /dev/null 2>&1
rm ~/../usr/etc/motd.dpkg-old > /dev/null 2>&1
rm ~/../usr/etc/motd-playstore > /dev/null 2>&1
rm ~/../usr/etc/motd-playstore.dpkg-old > /dev/null 2>&1

# AGREGANDO EJECUTABLES A BINARIOS

cp ./.dev/bin/* $PREFIX/bin/

# EJECUTANDO NVIM (NEOVIM)

nvim

clear
echo -e "${red}
    ${bred} ${white} Welcome to Termux-Dev!  ${bblack}${red}
${white}
${bwhite} ${black} Please restart your Termux app!  ${bblack}${white}
"${white}

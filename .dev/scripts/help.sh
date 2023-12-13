#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e "${cyan}
</> ${white}Welcome to ${cyan} ${white}Termux-De ${cyan}</>${white}

dev ${cyan}<${black}argument${cyan}> <${black}option${cyan}>

${black}┌┅{ ${cyan}config ${black}}
┃
└┅➤[ ${white}gitkey ${black}] ${cyan}┅➤( ${black}set github token ${cyan})${black}
└┅➤[ ${white}login ${black}] ${cyan}┅➤( ${black}set termux login ${cyan})${black}

┌┅{ ${cyan}create ${black}}
┃
└┅➤[ ${white}vite ${black}] ${cyan}┅➤( ${black}create vite project ${cyan})${black}
└┅➤[ ${white}react ${black}] ${cyan}┅➤( ${black}create react-app project ${cyan})${black}

┌┅{ ${cyan}server ${black}}
┃
└┅➤[ ${white}node ${black}] ${cyan}┅➤( ${black}start live-server ${cyan})${black}
└┅➤[ ${white}php ${black}] ${cyan}┅➤( ${black}start php server ${cyan})${black}
└┅➤[ ${white}python ${black}] ${cyan}┅➤( ${black}start python server ${cyan})${black}
${cyan}
Commands:
${white}
dev ${cyan}┅➤[ ${black}main command to manage termux-dev ${cyan}]${white}
termux-dev-update ${cyan}┅➤[ ${black}update termux-dev repo ${cyan}]${white}
gitkey ${cyan}┅➤[ ${black}show git token ${cyan}]
"${white}

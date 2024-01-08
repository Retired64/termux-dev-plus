#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e "${red}
</> ${white}Welcome to ${red} ${white}Termux-De ${red}</>${white}

dev ${red}<${black}argument${red}> <${black}option${red}>

${black}┌┅{ ${red}config ${black}}
┃
└┅➤[ ${white}token ${black}] ${red}┅➤( ${black}set new token ${red})${black}
└┅➤[ ${white}login ${black}] ${red}┅➤( ${black}set termux login ${red})${black}

┌┅{ ${red}create ${black}}
┃
└┅➤[ ${white}vite ${black}] ${red}┅➤( ${black}create vite project ${red})${black}
└┅➤[ ${white}react ${black}] ${red}┅➤( ${black}create react-app project ${red})${black}

┌┅{ ${red}server ${black}}
┃
└┅➤[ ${white}node ${black}] ${red}┅➤( ${black}start live-server ${red})${black}
└┅➤[ ${white}php ${black}] ${red}┅➤( ${black}start php server ${red})${black}
└┅➤[ ${white}python ${black}] ${red}┅➤( ${black}start python server ${red})${black}
${red}
Commands:
${white}
dev ${red}┅➤[ ${black}main command to manage termux-dev ${red}]${white}
termux-dev-update ${red}┅➤[ ${black}update termux-dev repo ${red}]${white}
"${white}

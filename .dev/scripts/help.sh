#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e "${white}
dev ${red}<${black}argument${red}> <${black}option${red}>

${black}┌┅{ ${red}config ${black}}
┃
└┅➤[ ${white}theme ${black}] ${red}┅➤( ${black}change theme color ${red})${black}
└┅➤[ ${white}banner ${black}] ${red}┅➤( ${black}change default banner ${red})${black}
└┅➤[ ${white}port ${black}] ${red}┅➤( ${black}change default port ${red})${black}

┌┅{ ${red}new ${black}}
┃
└┅➤[ ${white}token ${black}] ${red}┅➤( ${black}save new token ${red})${black}
└┅➤[ ${white}note ${black}] ${red}┅➤( ${black}save new note ${red})${black}
└┅➤[ ${white}project ${black}] ${red}┅➤( ${black}create new project ${red})${black}

┌┅{ ${red}server ${black}}
┃
└┅➤[ ${white}node ${black}] ${red}┅➤( ${black}start live-server ${red})${black}
└┅➤[ ${white}php ${black}] ${red}┅➤( ${black}start php server ${red})${black}
└┅➤[ ${white}python ${black}] ${red}┅➤( ${black}start python server ${red})${black}

┌┅{ ${red}show ${black}}
┃
└┅➤[ ${white}tokens ${black}] ${red}┅➤( ${black}show saved tokens ${red})${black}
└┅➤[ ${white}notes ${black}] ${red}┅➤( ${black}show saved notes ${red})${black}
└┅➤[ ${white}commands ${black}] ${red}┅➤( ${black}show all commands ${red})${black}
└┅➤[ ${white}port ${black}] ${red}┅➤( ${black}show current port ${red})${black}

┌┅{ ${red}forward ${black}}
┃
└┅➤[ ${white}ngrok ${black}] ${red}┅➤( ${black}start ngrok server ${red})${black}
└┅➤[ ${white}cloudflared ${black}] ${red}┅➤( ${black}start cloudflared server ${red})${black}
└┅➤[ ${white}localtunnel ${black}] ${red}┅➤( ${black}start localtunnel server ${red})${black}

┌┅{ ${red}init ${black}}
┃
└┅➤[ ${white}react ${black}] ${red}┅➤( ${black}init a setup for frontend ${red})${black}
└┅➤[ ${white}express ${black}] ${red}┅➤( ${black}init a setup for backend ${red})${black}

┌┅{ ${red}deploy ${black}}
┃
└┅➤[ ${white}github ${black}] ${red}┅➤( ${black}deploy files to github ${red})${black}"

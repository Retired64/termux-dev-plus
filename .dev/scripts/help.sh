#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e "${white}
dev ${red}<${black}argument${red}> <${black}option${red}>

${black}┌┅{ ${red}config ${black}}
┃
└┅➤[ ${white}login ${black}] ${red}┅➤( ${black}set termux login ${red})${black}
└┅➤[ ${white}banner ${black}] ${red}┅➤( ${black}set termux banner ${red})${black}

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
└┅➤[ ${white}commands ${black}] ${red}┅➤( ${black}show all commands ${red})${black}"

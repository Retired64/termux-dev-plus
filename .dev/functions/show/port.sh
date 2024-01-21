#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

showPort=$(cat ~/.termux-dev/env/ports/port.txt)

echo -e "${red}
${bred} ${white} PORT  ${red}${bblack}"${white}
echo -e "${showPort}"

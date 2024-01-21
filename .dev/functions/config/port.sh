#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

if [[ ! -d ~/.termux-dev/env/ports ]]; then
  mkdir -p ~/.termux-dev/env/ports
fi

if [[ -f ~/.termux-dev/env/ports/port.txt ]]; then
  oldPort=$(cat ~/.termux-dev/env/ports/port.txt)
else
  oldPort="8080"
fi
echo -e -n "${white}
${bred} PORT NUMBER ${bblack}${red} "${black}
read -r port

echo "${port}" > ~/.termux-dev/env/ports/port.txt
sed -i "s!${oldPort}!${port}!g" ~/.termux-dev/env/config.sh


#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

if [[ ! -d ~/.termux-dev/notes ]]; then
  mkdir -p ~/.termux-dev/notes
fi

echo -e -n "${white}
${bred} ENTER TITLE NOTE ${bblack}${red} "${black}
read -r value
name=$(echo "${value}" | tr " " "-")

echo -e "${red}
${bred} ${white}WRITE YOUR NOTE ${bblack}${red}
${white}
Press [Ctrl] + [D] to save.
"${black}

cat > ~/.termux-dev/notes/${name}

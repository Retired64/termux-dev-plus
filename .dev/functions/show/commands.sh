#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

names=$(ls ${TermuxDev}/.dev/bin)
num=$(echo "${names}" | wc -l)

echo "${names}" >> ~/.names.txt

echo -e "${red}
${bred} ${white} COMMANDS  ${red}${bblack}"${white}
for ((i = 0; i <= ${num}; i++)); do
  name=$(awk "NR ==${i}" ~/.names.txt)
  echo -e "${green}${name}${white}"
done

rm ~/.names.txt

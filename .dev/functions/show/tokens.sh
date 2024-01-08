#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

if [[ ! -d ~/.termux-dev/tokens/list ]]; then
  mkdir -p ~/.termux-dev/tokens/list
fi

names=$(ls ~/.termux-dev/tokens)
echo "${names}" >> ~/.termux-dev/tokens/list/names.txt
num=$(cat ~/.termux-dev/tokens/list/names.txt | wc -l)

for ((i = 1; i <= ${num}; i++)); do
  name=$(awk "NR ==${i}" ~/.termux-dev/tokens/list/names.txt)
  echo -e "${i} ${name}"
done

echo -e -n "${white}
${bred} ENTER NUMBER TOKEN ${bblack}${red} "${black}
read -r numberToken

nameToken=$(awk "NR ==${numberToken}" ~/.termux-dev/tokens/list/names.txt)

echo -e ""
cat ~/.termux-dev/tokens/${nameToken}

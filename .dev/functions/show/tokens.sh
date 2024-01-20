#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

if [[ ! -d ~/.termux-dev/tokens/.list ]]; then
  mkdir -p ~/.termux-dev/tokens/.list
fi

names=$(ls ~/.termux-dev/tokens)
echo "${names}" >> ~/.termux-dev/tokens/.list/names.txt
num=$(cat ~/.termux-dev/tokens/.list/names.txt | wc -l)

for ((i = 1; i <= ${num}; i++)); do
  name=$(awk "NR ==${i}" ~/.termux-dev/tokens/.list/names.txt)
  echo -e "${red}
${bwhite} ${black}${i}${red} ${black}${name} ${bblack}${red}"
done

echo -e -n "${white}
${bred} ENTER NUMBER TOKEN ${bblack}${red} "${black}
read -r numberToken

if [[ "${numberToken}" -le "${num}" ]]; then
  nameToken=$(awk "NR ==${numberToken}" ~/.termux-dev/tokens/.list/names.txt)
  echo -e ""
  cat ~/.termux-dev/tokens/${nameToken}
else
  echo -e "
${red}TOKEN NOT FOUND!"
fi 
rm ~/.termux-dev/tokens/.list/names.txt

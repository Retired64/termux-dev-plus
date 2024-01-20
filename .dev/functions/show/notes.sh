#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

if [[ ! -d ~/.termux-dev/notes/.list ]]; then
  mkdir -p ~/.termux-dev/notes/.list
fi

names=$(ls ~/.termux-dev/notes)
echo "${names}" >> ~/.termux-dev/notes/.list/names.txt
num=$(cat ~/.termux-dev/notes/.list/names.txt | wc -l)

for ((i = 1; i <= ${num}; i++)); do
  name=$(awk "NR ==${i}" ~/.termux-dev/notes/.list/names.txt)
  echo -e "${red}
${bwhite} ${black}${i}${red} ${black}${name} ${bblack}${red}"
done

echo -e -n "${white}
${bred} ENTER NUMBER NOTE ${bblack}${red} "${black}
read -r numberNote

if [[ "${numberNote}" -le "${num}" ]]; then
  nameNote=$(awk "NR ==${numberNote}" ~/.termux-dev/notes/.list/names.txt)
  echo -e "${white}"
  cat ~/.termux-dev/notes/${nameNote}
else
  echo -e "
${red}NOTE NOT FOUND!"
fi 
rm ~/.termux-dev/notes/.list/names.txt

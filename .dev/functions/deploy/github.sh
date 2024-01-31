#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e -n "${white}
${bred} BRANCH ${bblack}${red} "${black}
read -r branch
echo -e "${white}"
git pull origin ${branch}
git branch -m ${branch}
git add .
git status

echo -e -n "${white}
${bred} COMMIT ${bblack}${red} "${black}
read -r commit
echo -e "${white}"
git commit -m "${commit}"
git push origin ${branch}

#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e -n "${white}
${bred} BRANCH ${bblack}${red} "${black}
read -r branch

git pull origin ${branch}
git branch -m ${branch}
git add .
git status

echo -e -n "${white}
${bred} COMMIT ${bblack}${red} "${black}
read -r commit

git commit -m "${commit}"
git push origin ${branch}

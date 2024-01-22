#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e -n "${white}
${bred} ENTER PATH FILE (.txt) ${red}${bblack} "${black}
read -r filePath

cp ${filePath} ~/.termux-dev/custom/custom.txt
echo "#!/bin/bash
cat ~/.termux-dev/custom/custom.txt" > ~/.termux-dev/custom/banner.sh

#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

echo -e -n "${green}
ENTER NAME PROJECT: "
read -r name

npx create-react-app ${name}

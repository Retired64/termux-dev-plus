#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

checkVercel=$(command -v vercel)

if [[ "${checkVercel}" == "" ]]; then
  npm install -g vercel
fi

vercel

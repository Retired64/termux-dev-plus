#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

npm init --yes
mkdir src

nameProject=$(awk "NR == 2" package.json | cut -d '"' -f 4)

echo '{
  "name": "backend",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "type": "module",
  "scripts": {
    "dev": "nodemon src/index.js"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}' > package.json

sed -i "s!backend!${nameProject}!g" package.json

npm install -D nodemon
npm install express mongoose dotenv cors morgan bcryptjs jsonwebtoken

echo 'import app from "./app.js";

app.listen(3000);

console.log("Server started on port", 3000);' > src/index.js

echo 'import express from "express";
import morgan from "morgan";

const app = express();

app.use(morgan("dev"));

export default app;' > src/app.js

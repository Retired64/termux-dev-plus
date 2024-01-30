#!/bin/bash

source ~/.termux-dev/env/env.sh
source ~/.termux-dev/env/config.sh

# RESETEANDO ARCHIVOS DE VITE 

npm install
rm src/App.css
rm src/index.css
rm src/App.jsx

echo 'const App = () => {
  return (
    <div>
      <h1>Hello Termux-Dev!</h1>
    </div>
  );
};

export default App;' > src/App.jsx

# INSTALANDO TAILWINDCSS 

npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

echo '/** @type {import("tailwindcss").Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}' > tailwind.config.js

echo '@tailwind base;
@tailwind components;
@tailwind utilities;' > src/index.css

# INSTALANDO PRETTIER PARA TAILWINDCSS 

npm install -D prettier prettier-plugin-tailwindcss
echo '{
  "plugins": ["prettier-plugin-tailwindcss"]
}' > .prettierrc

# INSTALANDO PLUGINGS PARA REACT 

npm install react-router-dom react-icons axios

echo -e "${red}
SUCCESSfUL MODULE INSTALLATION:
${white}
react-router-dom
react-icons
axios
tailwindcss
prettier-plugin-tailwindcss
"

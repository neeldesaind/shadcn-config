Step 1: Create project
- npm create vite@latest
- Project name: shad-vite
- cd shad-vite
- npm i

Step 2: Add Tailwind CSS
- npm install tailwindcss @tailwindcss/vite

- In src/index.css 
	- @import "tailwindcss";


Step 3: create/edit jsconfig.json file
- {
    "files": [],
    "references": [
      
    ],
    "compilerOptions": {
      "baseUrl": ".",
      "paths": {
        "@/*": ["./src/*"]
      }
    }
  }
  

Step 4: npm install -D @types/node

Step 5: Change vite.config.js

import path from "path"
import tailwindcss from "@tailwindcss/vite"
import react from "@vitejs/plugin-react"
import { defineConfig } from "vite"

// https://vite.dev/config/
export default defineConfig({
  plugins: [react(), tailwindcss()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
    },
  },
})

Step 6: Initlaize the shadcn
npx shadcn@latest init

Which color would you like to use as base color? › Neutral

Step 7: Add Components
npx shadcn@latest add button

*Note you need to install components one by one if you don't want to add one by one use this bas file shadcn-installer

Steps for shadcn-installer:

Step 1: Download install-shadcn-components.sh and paste in your root folder of project

Step 2: Open cli and move to the folder where you want all components

ideal: src/

Step 3: Now in cli command:
./install-shadcn-components.sh


? How would you like to proceed? 

Click enter on  Use --force



In app.jsx
import { Button } from "";

function App() {
  return (
    <div className="flex flex-col items-center justify-center min-h-screen space-y-4">
      <Button>Click me</Button>
    </div>
  );
}

export default App;

# 🧪 Shad-Vite

A modern frontend stack using **Vite**, **React**, **Tailwind CSS**, and **ShadCN UI**.

---

## 🏁 Project Setup

### Step 1: Create the Project

```bash
npm create vite@latest
# Enter project name: shad-vite

cd shad-vite
npm install
````

---

### Step 2: Add Tailwind CSS

```bash
npm install tailwindcss @tailwindcss/vite
```

In `src/index.css`, add:

```css
@import "tailwindcss";
```

---

### Step 3: Setup Path Aliases

Create or edit the `jsconfig.json` file in the project root:

```json
{
  "files": [],
  "references": [],
  "compilerOptions": {
    "baseUrl": ".",
    "paths": {
      "@/*": ["./src/*"]
    }
  }
}
```

---

### Step 4: Install Type Definitions

```bash
npm install -D @types/node
```

---

### Step 5: Configure `vite.config.js`

```js
import path from "path";
import tailwindcss from "@tailwindcss/vite";
import react from "@vitejs/plugin-react";
import { defineConfig } from "vite";

// https://vite.dev/config/
export default defineConfig({
  plugins: [react(), tailwindcss()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
    },
  },
});
```

---

### Step 6: Initialize ShadCN UI

```bash
npx shadcn@latest init
```

When prompted:

> Which color would you like to use as base color?
> **› Neutral**

---

### Step 7: Add UI Components

Add individual components as needed:

```bash
npx shadcn@latest add button
```

---

### 📦 Optional: Install All Components at Once

To avoid manually installing components one-by-one, you can use a **shadcn-installer script**.

#### Step 1: Download the Installer

Download `install-shadcn-components.sh` and place it in your project root.

#### Step 2: Open CLI and Move to Component Folder

Example (recommended: inside `src/`):

```bash
cd src
```

#### Step 3: Run the Installer

```bash
./install-shadcn-components.sh
```

> When prompted:
> **Click Enter on `Use --force`**

---

## ⚛️ Example Usage in `App.jsx`

```jsx
import { Button } from "@/components/ui/button";

function App() {
  return (
    <div className="flex flex-col items-center justify-center min-h-screen space-y-4">
      <Button>Click me</Button>
    </div>
  );
}

export default App;
```

---

## 🧩 Project Structure

```
shad-vite/
├── public/
├── src/
│   ├── components/
│   ├── index.css
│   └── App.jsx
├── jsconfig.json
├── vite.config.js
└── package.json
```

---

## 🚀 Start Dev Server

```bash
npm run dev
```

---

## 🔗 Useful Resources

* [Vite](https://vitejs.dev/)
* [Tailwind CSS](https://tailwindcss.com/)
* [ShadCN UI](https://ui.shadcn.dev/)

```

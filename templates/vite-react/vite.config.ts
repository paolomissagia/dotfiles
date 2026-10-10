import react from '@vitejs/plugin-react'
import { defineConfig } from 'vite'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  build: {
    rollupOptions: {
      // 404.html is served by Vercel for any unknown path.
      input: ['index.html', '404.html'],
    },
  },
})

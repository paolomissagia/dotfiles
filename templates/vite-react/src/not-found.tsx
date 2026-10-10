import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import { NotFound } from './NotFound'

// The entry for 404.html, which Vercel serves for any address the site doesn't have.
createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <NotFound />
  </StrictMode>,
)

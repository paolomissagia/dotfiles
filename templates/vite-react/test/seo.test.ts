import { existsSync, readFileSync } from 'node:fs'
import { join } from 'node:path'
import { describe, expect, it } from 'vitest'

/*
 * Checks what search engines and link previews read from the site: index.html's head, the
 * share image, robots.txt, the sitemap and the 404 page. Copied unchanged from the template
 * (dotfiles/templates/vite-react); the site's address comes from the canonical link.
 */

const root = join(import.meta.dirname, '..')
const read = (file: string) => readFileSync(join(root, file), 'utf8')

/** Every tag of a kind in the head, as attribute maps; attributes may span lines. */
function tags(html: string, name: string) {
  const head = html.slice(0, html.indexOf('</head>'))
  return [...head.matchAll(new RegExp(`<${name}\\b([\\s\\S]*?)\\/?>`, 'g'))].map((match) =>
    Object.fromEntries([...match[1].matchAll(/([\w:-]+)="([^"]*)"/g)].map(([, key, value]) => [key, value])),
  )
}

const meta = (html: string, key: string) =>
  tags(html, 'meta').filter((tag) => tag.name === key || tag.property === key).map((tag) => tag.content)

/** Width and height of a PNG or JPEG. */
function imageSize(file: string) {
  const data = readFileSync(file)
  if (data.toString('ascii', 1, 4) === 'PNG') {
    return { width: data.readUInt32BE(16), height: data.readUInt32BE(20) }
  }
  for (let i = 2; i < data.length; ) {
    const marker = data[i + 1]
    if (marker >= 0xc0 && marker <= 0xc3) {
      return { width: data.readUInt16BE(i + 7), height: data.readUInt16BE(i + 5) }
    }
    i += 2 + data.readUInt16BE(i + 2)
  }
  throw new Error(`${file}: not a PNG or JPEG`)
}

describe('index.html for search engines and link previews', () => {
  const html = read('index.html')
  const [canonical] = tags(html, 'link').filter((tag) => tag.rel === 'canonical').map((tag) => tag.href)
  const site = new URL(canonical)

  it('has one title and a description of 50 to 160 characters', () => {
    expect(html.match(/<title>/g)).toHaveLength(1)
    const [description] = meta(html, 'description')
    expect(description.length).toBeGreaterThanOrEqual(50)
    expect(description.length).toBeLessThanOrEqual(160)
  })

  it('links its canonical address, and the share card points at it', () => {
    expect(site.protocol).toBe('https:')
    expect(meta(html, 'og:url')).toEqual([canonical])
    for (const key of ['og:type', 'og:site_name', 'og:title', 'og:description', 'twitter:card']) {
      expect(meta(html, key), key).toHaveLength(1)
    }
  })

  it('shares a 1200 × 630 image from public/, with alt text', () => {
    const [image] = meta(html, 'og:image')
    const url = new URL(image)
    expect(url.origin).toBe(site.origin)
    const file = join(root, 'public', url.pathname)
    expect(existsSync(file), url.pathname).toBe(true)
    expect(imageSize(file)).toEqual({ width: 1200, height: 630 })
    expect(meta(html, 'og:image:width')).toEqual(['1200'])
    expect(meta(html, 'og:image:height')).toEqual(['630'])
    expect(meta(html, 'og:image:alt')[0]?.length).toBeGreaterThan(10)
  })

  it('describes the page with valid schema.org data', () => {
    const scripts = [...html.matchAll(/<script type="application\/ld\+json">([\s\S]*?)<\/script>/g)]
    expect(scripts.length).toBeGreaterThan(0)
    for (const [, json] of scripts) {
      expect(JSON.parse(json)['@context']).toBe('https://schema.org')
    }
  })

  it('points robots.txt at the sitemap, which lists the page', () => {
    expect(read('public/robots.txt')).toContain(`Sitemap: ${new URL('/sitemap.xml', site).href}`)
    expect(read('public/sitemap.xml')).toContain(`<loc>${canonical}</loc>`)
  })

  it('keeps the 404 page out of search results', () => {
    const notFound = read('404.html')
    expect(notFound.match(/<title>/g)).toHaveLength(1)
    expect(meta(notFound, 'robots')).toEqual(['noindex'])
  })
})

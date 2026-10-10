# Vite + React: search engines and link previews

How our Vite + React sites present themselves to search engines, AI crawlers and link previews. There are two shapes, and each has its own approach.

## Single-page sites (portfolio, biketoride): this template

One page, with its title, description, share card and structured data written once in `index.html`. Nothing is generated at build time, so there is nothing to maintain beyond the files themselves. Google renders the page's JavaScript; everything that link previews and other crawlers need is already in the HTML head.

| File | What it does |
| --- | --- |
| `index.html` | Title, description, canonical link, Open Graph and Twitter card, schema.org data |
| `public/og.png` | The share image: 1200 × 630, PNG or JPEG (bring your own) |
| `public/robots.txt` | Allows crawling and points at the sitemap |
| `public/sitemap.xml` | Lists the page |
| `404.html`, `src/not-found.tsx` | A branded page for unknown addresses, kept out of search results |
| `vite.config.ts` | Builds `404.html` as a second entry |
| `vercel.json` | Clean URLs and no single-page-app rewrite, so unknown addresses get a real 404 |
| `test/seo.test.ts` | Checks all of the above, copied unchanged |

### Apply it

1. Copy the files and replace `example.com`, the names and the descriptions. The canonical link is the site's one address: use the domain people should land on (with or without `www`, whichever the bare domain redirects to).
2. Add a `NotFound` component in the site's own style for `src/not-found.tsx` to render.
3. Make a share image at 1200 × 630 and put it in `public/`. A screenshot of the page's top section works; a designed card is better.
4. Remove any catch-all rewrite from `vercel.json`.
5. Run `npm test` and `npm run build`.

### Rules

- **The head is written once, in `index.html`.** Don't also set the title or meta tags from React.
- **One title, one description** of 50 to 160 characters that says what the page is.
- **`og:url` matches the canonical link**, and the share image lives on the same domain.
- **schema.org data** describes the subject: `Person` for a portfolio, `WebApplication` for a tool, `WebSite` otherwise.
- **The 404 page is `noindex`.**

## Sites with many pages and React Router (sonatina): React Router's prerendering

A content site with a page per item needs each page built as real HTML with its own head tags. Don't hand-roll this. Use React Router in framework mode: list the pages in `react-router.config.ts` with `prerender`, give each route a `meta` export, and generate the sitemap from the same data. See sonatina for the reference setup.

## After deploying

- Verify the domain in Google Search Console and Bing Webmaster Tools, and submit `/sitemap.xml`.
- Check a link preview, for example by pasting the address into a chat.

## Changing the template

Improve the template here first, then copy the change into each project, in its own PR.

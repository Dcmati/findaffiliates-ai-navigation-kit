# Discovery Endpoints

FindAffiliates exposes several public endpoints that help agents and crawlers understand the site.

## Main website

```text
https://www.findaffiliates.online/
```

## robots.txt

```text
https://www.findaffiliates.online/robots.txt
```

Use this before crawling. It lists public allowed paths and disallowed internal paths.

## Sitemap

```text
https://www.findaffiliates.online/sitemap.xml
```

Use this for URL discovery.

## LLM files

```text
https://www.findaffiliates.online/llms.txt
https://www.findaffiliates.online/llms-full.txt
```

Use these for AI-readable context about the site, its purpose, key pages, pricing, blog posts, and affiliate program discovery structure.

## API catalog

```text
https://www.findaffiliates.online/.well-known/api-catalog
```

This endpoint exposes public service discovery metadata.

## Agent Skills index

```text
https://www.findaffiliates.online/.well-known/agent-skills/index.json
```

This endpoint exposes public agent skill metadata where supported.

## Common public page patterns

```text
/
/submit
/find-affiliates-faq
/latest-affiliate-programs
/blogs
/blogs/{blog-slug}
/{program-slug}-affiliate-program
```

## Routes agents should avoid

Agents should not crawl or call routes marked as disallowed in `robots.txt`, including internal app, API, success, or type routes.

Examples:

```text
/api/
/app/
/submit/success
/types/*
```

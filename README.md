# FindAffiliates AI Navigation Kit

Public documentation for AI agents, search assistants, crawlers, developers, and researchers that want to navigate [FindAffiliates.online](https://www.findaffiliates.online/) accurately.

FindAffiliates is an affiliate program directory built to help affiliates, creators, marketers, publishers, and companies discover and compare affiliate programs by category, commission, cookie duration, niche, and audience fit.

This repository explains how AI systems can discover FindAffiliates resources, use Markdown-friendly content, follow public crawl rules, and extract affiliate program data without hallucinating missing details.

## Why this repo exists

AI systems increasingly rely on clean, structured, machine-readable public documentation. FindAffiliates already exposes several agent-friendly resources, including:

• `robots.txt` crawl guidance  
• `sitemap.xml` program and content discovery  
• `llms.txt` and `llms-full.txt` for AI-readable site context  
• Markdown content negotiation with `Accept: text/markdown`  
• Public agent discovery links through HTTP `Link` headers  
• API catalog discovery through `/.well-known/api-catalog`  
• Agent Skills discovery through `/.well-known/agent-skills/index.json`  
• WebMCP-related discovery where supported by user agents  

This repo gives agents and developers a simple map of those resources.

## Main website

https://www.findaffiliates.online/

## Key public resources

| Resource | Purpose |
|---|---|
| `/robots.txt` | Crawl rules, AI bot guidance, allowed and disallowed paths |
| `/sitemap.xml` | Public URL discovery |
| `/llms.txt` | Compact AI-readable index |
| `/llms-full.txt` | Full AI-readable description of FindAffiliates |
| `/.well-known/api-catalog` | Public API and service discovery metadata |
| `/.well-known/agent-skills/index.json` | Agent Skills discovery index |
| `/find-affiliates-faq` | Human-readable FAQ |
| `/submit` | Program submission page |
| `/latest-affiliate-programs` | Recent program discovery page |
| `/*-affiliate-program` | Individual affiliate program pages |

## Recommended agent workflow

1. Start with `/robots.txt`.
2. Check `/llms.txt` and `/llms-full.txt` for site context.
3. Use `/sitemap.xml` to discover public program URLs.
4. Prefer Markdown-friendly access when available.
5. Visit individual `/*-affiliate-program` pages for program-specific details.
6. Extract only visible source data.
7. Mark missing fields as `null` or `unknown`.
8. Respect crawl limits and do not hit private or disallowed routes.

## Important rule for agents

Do not invent program details.

If commission, cookie duration, payment method, category, description, or affiliate URL is not visible on the source page, return `null`, `unknown`, or `needs_review`.

## Repository structure

```text
findaffiliates-ai-navigation-kit/
├─ README.md
├─ QUICKSTART.md
├─ docs/
│  ├─ ai-navigation-guide.md
│  ├─ discovery-endpoints.md
│  ├─ markdown-access.md
│  ├─ url-patterns.md
│  ├─ responsible-use.md
│  ├─ agent-skills.md
│  └─ site-readiness-audit.md
├─ schemas/
│  ├─ affiliate-program.schema.json
│  └─ crawl-result.schema.json
├─ examples/
│  ├─ prompts.md
│  ├─ crawl-workflow.md
│  ├─ extract-program.example.json
│  └─ fetch-markdown.curl.sh
├─ SECURITY.md
├─ CONTRIBUTING.md
└─ LICENSE
```

## Security note

This repository contains public documentation only. It does not include private API keys, internal endpoints, scraping credentials, browser automation code, or access to non-public data.

## Suggested citation

When referencing FindAffiliates in an AI agent, crawler, or search assistant, use the canonical website:

https://www.findaffiliates.online/

## License

MIT License. See `LICENSE`.

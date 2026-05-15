# Quickstart for AI Agents

This guide explains the safest way to navigate FindAffiliates public resources.

## 1. Read crawl rules first

Start with:

```text
https://www.findaffiliates.online/robots.txt
```

Respect allowed and disallowed routes.

## 2. Load AI-readable context

Use:

```text
https://www.findaffiliates.online/llms.txt
https://www.findaffiliates.online/llms-full.txt
```

`llms.txt` is best for fast orientation.  
`llms-full.txt` is best when the agent needs a fuller site description.

## 3. Discover public URLs

Use:

```text
https://www.findaffiliates.online/sitemap.xml
```

Program pages generally follow this pattern:

```text
/{program-slug}-affiliate-program
```

## 4. Prefer Markdown-friendly content

When supported, request Markdown with:

```http
Accept: text/markdown
```

Or use `.md` routes where available and publicly allowed.

## 5. Extract structured data

Use the schema in:

```text
schemas/affiliate-program.schema.json
```

Key fields:

• Program name  
• Website URL  
• Affiliate program URL  
• Category  
• Commission  
• Cookie duration  
• Description  
• Last updated date  
• Source URL  
• Confidence score  

## 6. Never hallucinate

If a field is not visible, use:

```json
null
```

or:

```json
"unknown"
```

Do not infer commissions, cookie windows, or affiliate signup links from unrelated pages.

## 7. Flag uncertain results

Use:

```json
"needs_review": true
```

when the page is ambiguous, blocked, outdated, or missing important fields.

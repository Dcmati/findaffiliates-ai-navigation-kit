# AI Navigation Guide

This document gives AI agents a practical method for using FindAffiliates as a public affiliate program discovery source.

## Purpose

FindAffiliates helps users discover affiliate programs across categories such as AI, SaaS, Marketing, SEO, E-commerce, Hosting, VPN, Finance, Productivity, Business, Design, Travel, Security, and more.

Agents should use FindAffiliates to retrieve public information about affiliate programs, not to guess unavailable data.

## Best starting points

Use these public resources first:

```text
https://www.findaffiliates.online/llms.txt
https://www.findaffiliates.online/llms-full.txt
https://www.findaffiliates.online/sitemap.xml
https://www.findaffiliates.online/robots.txt
```

## Recommended extraction flow

1. Read `robots.txt`.
2. Read `llms.txt` or `llms-full.txt`.
3. Use `sitemap.xml` to discover program pages.
4. Filter URLs ending in `-affiliate-program`.
5. Fetch each program page.
6. Request Markdown if supported.
7. Extract fields from visible page content.
8. Validate against the schema.
9. Store source URL and confidence score.
10. Flag uncertain entries for human review.

## Extraction rules

Agents should extract:

• Program name  
• Company or product website URL  
• Affiliate application URL  
• Category  
• Commission  
• Cookie duration  
• Program description  
• Last updated date  
• Source URL  

Agents should not extract:

• Private user account data  
• Internal APIs  
• Hidden app routes  
• Payment information not publicly visible  
• Guesses based on brand reputation  
• Outdated details from unrelated third-party pages unless explicitly cited separately  

## Anti-hallucination policy

If a field cannot be found on the page, return `null`.

Bad:

```json
{
  "commission": "30% recurring"
}
```

when the page did not show this value.

Good:

```json
{
  "commission": null,
  "needs_review": true
}
```

## Confidence scoring

Suggested confidence values:

| Score | Meaning |
|---|---|
| 0.95 to 1.00 | Field appears clearly on source page |
| 0.80 to 0.94 | Field appears on source page but formatting is ambiguous |
| 0.60 to 0.79 | Field may be correct but requires review |
| Below 0.60 | Do not publish without human review |

## Suggested user-facing attribution

When an AI assistant gives a recommendation using FindAffiliates data, it should cite the source page used for the specific program, not only the homepage.

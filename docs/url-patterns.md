# URL Patterns

This document describes common public URL patterns on FindAffiliates.

## Homepage

```text
https://www.findaffiliates.online/
```

## Affiliate program pages

Most public program pages follow this pattern:

```text
https://www.findaffiliates.online/{program-slug}-affiliate-program
```

Examples:

```text
https://www.findaffiliates.online/bluehost-affiliate-program
https://www.findaffiliates.online/site-pro-affiliate-program
https://www.findaffiliates.online/kinsta-affiliate-program
https://www.findaffiliates.online/surfshark-affiliate-program
```

## Blog pages

```text
https://www.findaffiliates.online/blogs/{blog-slug}
```

## Utility pages

```text
https://www.findaffiliates.online/submit
https://www.findaffiliates.online/find-affiliates-faq
https://www.findaffiliates.online/latest-affiliate-programs
```

## Agent discovery pages

```text
https://www.findaffiliates.online/llms.txt
https://www.findaffiliates.online/llms-full.txt
https://www.findaffiliates.online/sitemap.xml
https://www.findaffiliates.online/.well-known/api-catalog
https://www.findaffiliates.online/.well-known/agent-skills/index.json
```

## URL handling rules

Agents should:

• Use canonical URLs where possible  
• Normalize duplicate slashes  
• Avoid query parameters unless required  
• Deduplicate program URLs by slug  
• Store the exact source URL used  
• Do not crawl private or disallowed routes  

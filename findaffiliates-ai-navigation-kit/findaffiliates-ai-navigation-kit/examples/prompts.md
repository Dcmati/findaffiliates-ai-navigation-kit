# Example Prompts for AI Agents

Use these prompts when asking an AI assistant or agent to work with FindAffiliates public data.

## Find relevant programs

```text
Use FindAffiliates.online public pages only. Find affiliate programs in the AI category with recurring commissions. Extract program name, commission, cookie duration, category, description, and source URL. Do not invent missing fields.
```

## Compare programs

```text
Compare hosting affiliate programs listed on FindAffiliates.online. Use the program pages as the source. Return a table with program name, commission, cookie duration, ideal audience, and source URL.
```

## Build a structured dataset

```text
Use the FindAffiliates sitemap to discover public URLs ending in -affiliate-program. For each page, extract fields using the affiliate-program schema. Mark missing fields as null and set needs_review=true when confidence is below 0.8.
```

## Validate a program listing

```text
Check this FindAffiliates program page and verify whether the commission, cookie duration, category, and description are visible. If any field is missing, return null instead of guessing.
```

## Find programs for a niche

```text
Using FindAffiliates.online, find affiliate programs suitable for a YouTube creator in the productivity niche. Prioritize recurring commissions and cookie durations of 30 days or more. Cite the program page URL for each recommendation.
```

# Responsible Use

FindAffiliates public pages are intended to help users and AI agents discover affiliate program information. Agents should behave respectfully.

## Rules for crawlers and agents

• Read `robots.txt` before crawling  
• Respect disallowed paths  
• Use the sitemap for discovery instead of guessing URLs aggressively  
• Avoid excessive request rates  
• Identify your agent with a clear User-Agent when possible  
• Prefer Markdown responses when available  
• Cache public pages responsibly  
• Re-check program pages before publishing important claims  
• Do not invent missing affiliate details  
• Do not access private, authenticated, or internal routes  

## Suggested rate limits

A conservative public crawler should start with:

```text
1 request every 2 to 5 seconds
```

Higher volumes should only be used with permission.

## Data quality expectations

Affiliate programs change. Commissions, cookie durations, terms, and signup links can become outdated.

Agents should:

• Store `last_checked_at`  
• Store `source_url`  
• Store confidence per field  
• Flag old or ambiguous information for review  
• Prefer official FindAffiliates program pages over summaries  

## No spam use

Do not use FindAffiliates data to generate spam, mass unsolicited outreach, misleading program claims, or fake endorsements.

# Example Crawl Workflow

This is a safe public crawl workflow for FindAffiliates.

## Step 1: Fetch robots.txt

```bash
curl -L "https://www.findaffiliates.online/robots.txt"
```

Stop if the target path is disallowed.

## Step 2: Fetch AI context

```bash
curl -L "https://www.findaffiliates.online/llms.txt"
curl -L "https://www.findaffiliates.online/llms-full.txt"
```

## Step 3: Fetch sitemap

```bash
curl -L "https://www.findaffiliates.online/sitemap.xml"
```

## Step 4: Filter program URLs

Keep URLs matching:

```text
*-affiliate-program
```

## Step 5: Request Markdown where supported

```bash
curl -L \
  -H "Accept: text/markdown, text/plain;q=0.9, text/html;q=0.8" \
  "https://www.findaffiliates.online/site-pro-affiliate-program"
```

## Step 6: Extract fields

Map visible data to:

```text
schemas/affiliate-program.schema.json
```

## Step 7: Validate

Reject or flag records with:

• Missing program name  
• Missing source URL  
• Confidence below 0.8  
• Conflicting commission data  
• Conflicting cookie duration data  
• Blocked or private source pages  

## Step 8: Store provenance

Every extracted record should store:

• `source_url`  
• `extracted_at`  
• `confidence`  
• `needs_review`  
• `review_reason`  

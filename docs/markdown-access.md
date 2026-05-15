# Markdown Access

FindAffiliates is designed to be readable by AI agents.

## Preferred method

When fetching public HTML pages, agents should try requesting Markdown:

```http
Accept: text/markdown
```

If the server returns:

```http
Content-Type: text/markdown
```

the agent should use the Markdown response as the primary source because it is usually cleaner and easier to parse.

## Markdown route pattern

Where available and publicly allowed, agents may also try Markdown-style routes such as:

```text
https://www.findaffiliates.online/{path}.md
```

Agents should only use `.md` routes that return a valid public response.

## Fallback

If Markdown is unavailable, agents may parse the public HTML page.

## Do not scrape internal data

Markdown access is meant for public content only. It does not grant permission to access private accounts, internal APIs, admin routes, or disallowed paths.

## Recommended headers

```http
User-Agent: YourAgentName/1.0 (+your-contact-url)
Accept: text/markdown, text/plain;q=0.9, text/html;q=0.8
```

## Extraction quality

Markdown should reduce parsing errors, but agents must still validate fields against the source page and avoid inventing unavailable values.

# Site Readiness Audit Notes

This document summarizes the public agent-readiness signals for FindAffiliates based on the provided scan and public resources.

## Current positioning

FindAffiliates is already strong for AI agent discovery.

The provided scan reported:

• Overall score: 75  
• Level: 4, Agent-Integrated  
• Discoverability: 100  
• Content: 100  
• Bot Access Control: 100  
• API, Auth, MCP and Skill Discovery: 50  
• Commerce: Not checked  

## Strengths

### Discoverability

The scan reported valid `robots.txt`, valid `sitemap.xml`, and agent-useful HTTP `Link` headers.

### Markdown access

The scan reported support for Markdown negotiation with `Accept: text/markdown`.

### AI bot access control

The scan found rules for major AI bots, including GPTBot, ChatGPT-User, Claude-Web, Anthropic-AI, PerplexityBot, Google-Extended, CCBot, and others.

### Content Signals

The scan reported Content Signals in `robots.txt`.

### API catalog

The scan reported `/.well-known/api-catalog` with one listed API/service discovery entry.

### Agent Skills

The scan reported a valid Agent Skills index with three skills.

### WebMCP

The scan reported three WebMCP tools through `imperative_api`.

## Main gap

The scan reported that Web Bot Auth request signing was not found at:

```text
/.well-known/http-message-signatures-directory
```

This was marked as informational.

## Recommended next improvements

1. Keep `robots.txt`, `sitemap.xml`, `llms.txt`, and `llms-full.txt` updated.
2. Add short examples to `llms.txt` showing how agents should use program pages.
3. Keep Agent Skills descriptions concise and specific.
4. Add field-level extraction guidance for affiliate program pages.
5. Consider Web Bot Auth only if FindAffiliates itself starts making agent or bot requests to other sites.
6. Add a public changelog for agent-facing changes.
7. Keep Markdown output clean, especially on individual program pages.

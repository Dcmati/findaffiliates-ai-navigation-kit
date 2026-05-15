# Agent Skills and Discovery

FindAffiliates exposes agent discovery metadata through public `.well-known` routes.

## Agent Skills index

```text
https://www.findaffiliates.online/.well-known/agent-skills/index.json
```

Agents can use this index to discover supported public skills.

## API catalog

```text
https://www.findaffiliates.online/.well-known/api-catalog
```

Agents can use this resource for service discovery metadata.

## Suggested agent behavior

1. Fetch `/.well-known/agent-skills/index.json`.
2. Validate the JSON response.
3. Follow only public skill URLs listed in the index.
4. Do not infer hidden skills or tools.
5. Respect `robots.txt` and public access controls.

## Good use cases

• Discover public affiliate program search guidance  
• Retrieve Markdown-friendly documentation  
• Understand structured program data expectations  
• Help users find relevant affiliate programs  

## Bad use cases

• Accessing private APIs  
• Attempting admin routes  
• Guessing hidden endpoints  
• Bypassing authentication  
• Using metadata to automate spam  

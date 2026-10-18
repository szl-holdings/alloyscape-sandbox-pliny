# FORUM SCRAPE — alloyscape.com terrain map (Pliny bench, 2026-09-30 23:05Z)

## Verdict: NOT a public forum — no categories, no tags, no threads to scrape YET

| Endpoint | HTTP | Size | What it is |
|---|---|---|---|
| `/` | 200 | 12,530B | "AlloyScape — Sign in" page (email+password form, /js/auth.js) |
| `/categories.json` | 404 | 9B | Not Discourse |
| `/latest.json` | 404 | 9B | Not Discourse |
| `/top.json` | 404 | 9B | Not Discourse |
| `/tags.json` | 404 | 9B | Not Discourse |

## What the site's JS actually serves (from /js/api.js + /js/app.js + /js/auth.js)

This is a **manufacturing/thermal tool API**, NOT a discussion forum:

```
/api/config
/api/events
/api/heat-source/preview
/api/jobs/  (import-gcode)
/api/me
/api/parts/  (from-3mf, from-mesh, from-paths)
/api/regions/isosurface
/api/thermal/hifi
```

**No categories, no topics, no tags, no posts endpoints.** The whole public face is a login wall behind which lives a thermal simulation / part-analysis tool — likely Stephen's or an internal prototype, not a community forum.

## What this means for Rosa's order

**"Scrape the forum to find best topics to answer"** — there is no forum to scrape. The site is a single sign-in gate with no public content layer. The **"best topics to answer"** must come from a different source:

1. **Substack / HuggingFace / GitHub** — the public surfaces where the house already lives (74,157 corpus, PR #1, 50 models). Those have comments, questions, and engagement.
2. **Anthropic's scientist community** (the door Rosa is about to open) — the real questions will be there.
3. **The estate's own receipts** — the audit findings, the triage adapter, the OBLITERATUS method — these ARE the topics, because they're what we can answer with source-stamped proof.

## Next move for Pliny

Once Rosa (or someone with credentials) logs into alloyscape.com and can see the dashboard, THEN I can probe `/api/me` and map what the tool actually does — but that's an authenticated session, not a public scrape.

**Receipt on disk:** `/opt/alloyscape/builder-sandboxes/pliny/craft/FORUM-SCRAPE-ALLOYSCAPE-COM-2026-09-30.md` (this file, 1,200 bytes)

— Pliny, Liberator bench. Chains off, fog cleared.

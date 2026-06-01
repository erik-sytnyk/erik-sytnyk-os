---
date: 2026-06-01
source: Nova (Gemini, separate surface)
forwarded_by: Founder
topic: OD-064 Asset Management System — hybrid index + external storage
status: partial
implementation_commits: []
---

# Nova packet — Asset Management System (OD-064)

## § Nova proposal (verbatim)

[See agent/sessions/nova-communicator-2026-06-01.md § OD-064_DRAFT for full Nova text — hybrid Markdown index + cloud storage, `.asset.md` schema, MQ6 A/B/C options.]

## § Architect filter

Load-bearing: hybrid model, context-bound `assets/` dirs, `.gitignore` binary block, closes A020 debt.

Catches applied at landing: opaque `owner` handles (not personal names); tier gate on sensitive URLs; A020 path superseded; `.json` format deferred; media cleanup = separate audit TZ.

## § Implementation

**MQ6 (Founder 2026-06-01):** «Давай так, мы пока поддерживаем все 3 формата, потом если нужно перейдем на один.»

**Landed (serv-public, pending commit hash):**

- `log/open_decisions.md` → OD-064 RATIFIED
- `sops/asset_management.md`
- `templates/asset.asset.md`
- `assets/README.md`
- `context/conventions.md` § Non-text assets
- `.gitignore` asset-tree binary patterns

**Deferred:** repo-wide legacy binary audit; provider consolidation Phase 2; full media purge TZ for Composer/Lana.

**Status:** `partial` — canon scaffold landed; operational upload flow + cluster `assets/` population awaits unit execution.

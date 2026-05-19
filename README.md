# erik-sytnyk-os — Founder / Life OS

> **Version:** v0.1 — bootstrapped 2026-05-19 per `orbios-os-v3:/log/open_decisions.md` OD-027.

## Purpose

This is Erik Sytnyk's personal operating system — the Life-OS layer that mirrors `orbios-os-v3` (Company OS) but lives in full isolation from it.

**`orbios-os-v3`** = Company OS: manifest, R1–R7, tracks, units, missions, briefs, SOPs. Visible to Claude, Reviewer, and (eventually) Orbios staff within their access tier.

**`erik-sytnyk-os`** (this repo) = Founder / Life OS: biometrics, Shadow Mirror interpretive notes, deep motives, energy audit, life-domain artifacts. Audience: **Erik (DEV-01) + Claude on explicit invitation only.**

## Audience

- **Erik Sytnyk** — sole owner and editor.
- **Claude** — reads and writes here **only on explicit Founder request**. Never autonomously. Never cites or mirrors this repo's content inside `orbios-os-v3` artifacts.
- **No one else.** Vianca, Illia, Reviewer, Nova, future hires — none of them ever touch this repo, directly or indirectly.

## Relationship to orbios-os-v3

These are sibling repositories (`C:\Storage\Projects\Orbios\`). They are **not** git submodules and share no file content.

When `orbios-os-v3` needs to acknowledge data that exists here, it uses a plain-text cross-repo marker:

```
[see erik-sytnyk-os:bio_metrics.md § daily-bp-log]
```

The marker is intentionally non-resolving in markdown viewers. Reviewer scanning `orbios-os-v3` can see "the data exists" but cannot access it. This is the correct behavior.

## What stays in orbios-os-v3 (not here)

- `stability_requirements.md` (Thai Partner spec, Camp 0 sanctuary, Legacy Parasites perimeter) — operationally intertwined with org missions; stays there.
- `state-of-orbios/<date>.md § 5` BP gate readings — gate Read-Only mode, must be Reviewer-auditable; stays there.
- All manifest, missions, personnel, SOPs, conventions — stay there.

## Files in this repo

| File | What it holds |
|------|--------------|
| `bio_metrics.md` | Daily BP log, sleep, weight, fitness program, supplements, symptoms, lab results |
| `interpersonal_context.md` | Shadow Mirror interpretive journal — private notes, NOT unit-facing HR evidence |
| `founder_values_internal.md` | Deep motives, philosophy, things not for staff consumption |
| `energy_leaks.md` | Running list of energy drains — people, situations, recurring patterns |
| `.cursorrules` | Claude behavior rules specific to this repo |

## A002 reinforcement

Nothing in this repo ever appears in `orbios-os-v3` unit-facing artifacts: personnel files, cluster missions, briefs, manifests, SOPs, or session logs. Cross-repo references use the marker form above — content never leaks.

## Backup

This repo is **not** pushed to GitHub automatically. Options:
- **(Recommended) Private GitHub repo under `@erik-sytnyk`, zero collaborators** — push manually when you want an off-site backup. Gives git versioning + private cloud backup.
- **Local-only** — maximum privacy but relies on local backup only (arrange encrypted backup separately if choosing this path).

Pushing is a manual step. Run `git remote add origin <url>` and `git push -u origin master` when/if you decide to add a remote.

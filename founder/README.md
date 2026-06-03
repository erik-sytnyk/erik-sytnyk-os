# /context/founder/ — Founder personal/lifestyle layer

Captures Founder lifestyle requirements, personal stability inputs, and life-domain artifacts that are part of the system contract (Track A — Founder's Vitality (FVE)) but **do not belong** in Orbios HR/Personnel.

## Why this folder exists

Track A (Founder's Vitality (FVE), per Manifest A010/A013) is the Primary Objective. Some of its inputs are personal/lifestyle (partner, sanctuary, biological recovery, etc.) and become part of the system in ways that the standard structures (Personnel, Clusters, Missions) cannot hold cleanly:

- `/context/personnel/` is for **Orbios staff under work contracts** (R1–R7 apply). A life partner, a sanctuary plot, or a fitness regimen does not fit this contract shape.
- `/log/management/` is for tracking units. Track A inputs are not units.
- `/clusters/` is for execution capacity. Track A inputs are conditions, not capacity.

So they live here.

## Audience

DEV-01 + Claude only. Personal data. Not unit-facing.

## Files

- `stability_requirements.md` — current canonical list of Founder stability inputs (Thai Partner spec, Camp 0 sanctuary, etc.).
- [`entrepreneur-archetypes-solonin.md`](entrepreneur-archetypes-solonin.md) — Solonin entrepreneur archetypes transcript & calibration map of DEV-01 blind spots (`#founder-role-model #safeguards`).
- Future: `recovery_protocols.md`, `social_perimeter.md` etc. as they emerge.

## What does NOT live here (since A018 / OD-027)

The deeper personal layer — daily biometrics, Shadow Mirror interpretive journal, deep motives, energy leak audit — lives in **`erik-sytnyk-os`** (`C:\Storage\Projects\Orbios\erik-sytnyk-os`), a separate private sibling repo visible only to DEV-01 + Claude on explicit invitation.

**Why the split:**
- Items in `/context/founder/` have direct **org operational consequence** (e.g. Thai Partner spec feeds PH-01 scope constraints; Legacy Parasites perimeter feeds LEGACY track). They must be Reviewer-auditable in this repo.
- Items in `erik-sytnyk-os` are **purely personal**: daily BP logs, sleep, interpretive notes about people, deep values. No operational evidence role; should never appear in unit-facing artifacts.

When `orbios-os-v3` needs to reference `erik-sytnyk-os` content, use the opaque cross-repo marker:
```
[see erik-sytnyk-os:bio_metrics.md § daily-bp-log]
```
This marker is intentionally non-resolving — Reviewer sees "data exists" but cannot access it.

## Conventions

- Mostly immutable in spirit. Changes track via revision section at the bottom of each file.
- Privacy: do not mirror this folder in any public artifact, README, or external doc.

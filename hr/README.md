# /log/hr/ — HR dossiers

> **Audience:** DEV-01 + Claude only. Not unit-facing by convention. Contains personal data (private correspondence, contact info, hiring context).

## What lives here

One file per unit: `<slug>.md` (matches the personnel slug used elsewhere — see `/context/conventions.md`).

Each file is a chronological dossier of:

- **Sourcing context** — where the unit came from (LinkedIn search, referral, etc.).
- **Hiring correspondence** — verbatim or paraphrased external comms (LinkedIn, Telegram, email) that established the working relationship. Preserve the original wording for any commitments made by either side.
- **External commitments** — what was promised (rate, trial length, working style expectations) before the unit saw the repo.
- **Identity / KYC notes** — anything used to verify the unit is who they say they are (LinkedIn profile, real-photo Discord, ID if collected).
- **Post-hire HR events** — rate changes, scope renegotiations, off-cycle conversations, R6 proceedings.

## Why preserve external comms

- The repo is source of truth for *system* state (R3, R4). But hiring happens *before* the unit has repo access — those promises still bind. Without a written record, "what was agreed" drifts.
- v1/v2 failure mode: rate/scope ambiguity in the unit's head vs Erik's head. HR dossier closes that gap.
- For R6 triggers, the dossier is evidence that expectations were set in writing.

## Privacy / handling

- This folder contains **personal data**. Do not mirror this repo publicly while these files exist.
- If a unit asks for their dossier, the contents are theirs to read — but the *folder* is not part of their default reading list.
- When a unit's relationship ends, retain the dossier for the duration of any applicable record-keeping requirement, then archive.

## Template

See [`/templates/hr_dossier.md`](../../templates/hr_dossier.md). The SOP `/sops/add_unit.md` § 1.5 references it.

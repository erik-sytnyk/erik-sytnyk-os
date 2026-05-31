---
date: 2026-05-31
type: historical-abuse-vulnerability-db
participants: [DEV-01, Nova, Communicator]
themes: [v1-failure, v2-failure, founder-abuse-patterns, r1-r7-antidotes]
status: active — Architect calibration input
captured_by: Communicator per Nova packet 2026-05-31
source: manifest Failure heritage, OD/reviews/session diagnosis (not full v1/v2 repo import)
---

# Orbios historical abuse log — vulnerability database

> **Purpose:** Pre-commit hooks for Founder life — agents use this to **reject** task shapes that recreate v1/v2 harm.  
> **Not unit-facing** (Tier E/F narrative). Serv-public enforcement = R1–R7 + [`/sops/founder_abuse_prevention.md`](../../../sops/founder_abuse_prevention.md).  
> **Deep history:** full git history lives in `orbios-os-v3` archive (Founder-only per `context/satellites.yaml`) — this file is **extracted markers**, not a history paste.

## How to use (Architect / Lana / Communicator)

| Signal in new work | Action |
|--------------------|--------|
| Matches **Abuse pattern ID** below | Block or reroute per linked antidote |
| Proposes Founder day-to-day execution | **Critical fault** — R5 + Founder Time Sovereignty |
| No mission / no acceptance criteria | **v2 replay** — refuse until mission exists |
| Chat-only status, no repo artifact | **v2 replay** — R3 violation |

---

## v1 failure markers (organizational)

| ID | Abuse pattern | What happened | v3 antidote |
|----|---------------|---------------|-------------|
| V1-01 | Low agency / no skin in the game | Units paid for presence, not output | **R1** pay-for-verified-output |
| V1-02 | No verification loop | Self-reported "done" accepted | **R2** external verification |
| V1-03 | AI not in loop early | Humans routed around system | **R3** agent from day 1 |
| V1-04 | "Team will grow into it" | Founder expected transformation without structure | **A023** contain-first; no wall removal on "improvement" |
| V1-05 | Ambient vision drift | Strategy changed in chat, not manifest | **R4** frozen vision + amendments |

---

## v2 failure markers (Founder-absorption)

| ID | Abuse pattern | What happened | v3 antidote |
|----|---------------|---------------|-------------|
| V2-01 | Founder absorbed into ops | Broker calls, contractor DMs, unit noise on Erik | **R5**, **A017** noise filter, Illia buffer |
| V2-02 | Founder out of management while vision iterates | Parallel chaos — no IoC | **Inversion of Control** + missions |
| V2-03 | Dishonest / unverifiable invoicing | Paid without repo evidence | **R1**, timesheets, Friday audit |
| V2-04 | Net-negative unit economics | Cost > verified output sustained | **R7**, **R6** |
| V2-05 | Contractor creep | Contractors in staff channels, no contract boundary | **A019** contractors folder, UA-01 interface |
| V2-06 | CAMP via personal messenger only | DEV-01 ↔ Illia ↔ Thanan off-OS | Missions + UA-01-M001+ repo capture (OD diagnosis) |
| V2-07 | Knowledge only in Founder head | Dropbox paths, passport hunt under load | `/input/README.md` router, documents index |
| V2-08 | Emotional HR from Shadow journal | Interpersonal notes used as R6 evidence | OD guardrail: management evidence in `/log/management/` only |
| V2-09 | Toxic contact unbuffered | Direct escalation to Founder | **A023** UA-02 class, Broker-O buffer, ratification gates only |
| V2-10 | Repo state lags Discord | "Done" in chat, stale missions | agent-logs, Unit-Lana, Context Freshness (vision_index) |

---

## Existential primary objective (2026-05-31 — Founder + Nova)

**Canon intent (serv-public landed in `product_mission.md` § Primary Objective):**

1. **Responsibility shift:** Life-support for Founder + key units → automated OS (missions, agents, gates). Founder = **Visionary CEO** (vector + ratification), not day-to-day operator. Return-to-routine = **critical system fault**.
2. **Resource discipline:** Founder pays hours + tokens. Every unit hour and model token must convert to **profit path or High Agency output**, not yak-shaving or context waste.
3. **Historical memory:** v1/v2 patterns in this file → automatic reject via agents (like BP > 145/90 → read-only in conventions).

**AGI replacement horizon:** strategic context only — does not change Monday unit tasks.

---

## Calibration hooks (IoC gates)

| Gate | Trigger | System response |
|------|---------|-----------------|
| FVE-BP-RO | BP > 145/90 | Read-Only mode (`conventions.md` § Track A) |
| R5-FAULT | Routine work assigned to Founder | Agent refuses; routes to Unit-Lana / Illia / Composer |
| STALE-CTX | Context Freshness RED (vision_index) | No new missions to units until refresh commit |
| V2-REPLAY | New process with no mission + no R2 | Architect block until mission drafted |

---

## Ingest backlog (v1/v2 full context)

| Item | Status |
|------|--------|
| Extract more markers from `orbios-os-v3` archive | **optional** — Founder/Architect session |
| Paste Erik verbatim v1/v2 post-mortem | **PENDING** if Founder provides |
| subscription-cut vision | **PENDING** (registry) |

## Cross-refs

- `context/manifest.md` — Failure heritage, R1–R7
- `sops/architect_inversion_of_control.md` §5
- `sops/founder_abuse_prevention.md`
- `context/vision_index.md` — Context Freshness

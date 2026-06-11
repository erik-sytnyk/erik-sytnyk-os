# Internal management notes — Vianca (PH-01-01)

> **Audience: DEV-01 + Claude only.** Vianca should not be assumed to read this file. Plain strict operational vocabulary lives here so the unit-facing docs can stay humane.

## Status

- **Access model:** **External Input Unit.** Vianca interacts via messaging only (Discord/DM). She does not have repo access and does not commit. **DEV-01 (Erik), or UA-01-01 (Illia) as pipeline-assist per A016**, manage the repo on her behalf. All her deliverables are logged by Erik/Claude/Illia.
- **Status:** TRIAL (Unverified Node).
- **Start:** 2026-05-18. Trial: 4 weeks (3-phase, per OD-009 + Zero-Touch protocol per OD-022).
- **Trial hard ceiling:** $500 / 100h.
- **Phase structure (post-Zero-Touch override 2026-05-19):**
  - **Phase 1 (days 1-7) — Kernel + Vision Delta.** Cap 20h. Gate: PH-01-M001 (intro message) + PH-01-M002 (Written Confirmation → Erik acks → DEV-01 commits acknowledgment.md) + PH-01-M003 (SEA Glamping Research, trial-by-fire) all accepted. **Kickoff call replaced by async messaging protocol (OD-022).**
  - **Phase 2 (days 8-14) — Trial gate** (honors LinkedIn 14-day trial): cap 30h. Gate: ≥1 real operational mission accepted in W2. If not met → R6 review before W3 starts.
  - **Phase 3 (days 15-28) — Ramp:** cap 35h/week. CAMP scope adds in (post-OD-023 legal). Gate: cumulative ≥3 missions accepted by end of W4.
- **R6 triggers:**
  - **Phase-2 gate failure** (no real mission accepted in W2).
  - 2 consecutive missions fail to reach `accepted`.
  - Trial hard ceiling hit with <3 accepted missions cumulatively.
  - Pattern of unlinked or fabricated timesheet entries discovered in audit.
  - **M002 (Affirmation) quality flag:** acknowledgment block missing required accept-bullets, vague "scope questions" without specific file/section reference, OR pre-attempt request for a call to "walk through the memo". Single instance = signal, repeated = trigger.
  - **M003 (SEA Glamping) quality flag:** generic list without Orb concept analysis, vague "fit" descriptions, OR pre-attempt request for a call. Single instance = signal, repeated = trigger.
- **R7 review cadence:** monthly post-trial.

## Hypotheses to verify

Nova's intake brief asserted "High Agency" and "Multitasking-capable" as facts. R2 treats these as hypotheses. Confirmation criteria: trial-period metrics in `/context/personnel/vianca-mitchell-meneses.md` all in target range by end of week 4 + clean Phase-1 trial-by-fire (M002 Written Confirmation + M003 SEA Glamping Research).

## Strategic context (from kickoff brief + 2026-05-19 vision update)

The kickoff brief (`/context/briefs/2026-05-17-ph-ops-kickoff.md`) describes the Founder Track pilot as eventually productizing into "a premium service for residents of our physical Camps". 2026-05-19 vision update extends this: Track A (Founder's Vitality (FVE)) is now Primary Objective, CAMP shifted to crowdfunding model, Camp 0 = Founders-only sanctuary.

Implications for PH-01 management:

- Routines, SOPs, and noise-filter mechanisms Vianca builds should be **reusable as a product**, not Founder-bespoke. When she proposes a routine, prefer the generalizable form.
- This is **strategic context, not a week-1 directive.** Don't surface it to her on day 1 — it'll come up naturally as routines stabilize.

## Audit checklist (Claude runs at end of each week)

1. Hours in timesheet ≤ this week's cap.
2. Admin hours ≤ 10% of this week's cap.
3. Every billable row references either a real mission ID or a named admin activity.
4. Every referenced commit SHA exists; every referenced artifact path exists.
5. Mission status flow is monotonic (no quiet rollbacks).
6. Acknowledgment line present in `/clusters/ph-01/acknowledgments.md` for completed missions.
7. Commit `user.name` matches Node ID prefix per `/context/conventions.md`.

Findings → `/log/open_decisions.md` (for Founder review) or resolved silently (just-noted in this file).

## Phase-1 quality signal (replaces old "kickoff call evaluation")

Per Zero-Touch override (OD-022 RESOLVED 2026-05-19), there is no kickoff call. The Phase-1 fit signal moves to **quality of M002 Written Confirmation + M003 SEA Glamping Research deliverable**, specifically:

- **M002 Confirmation:** Did she ack all three bullets unmodified? Did her "scope questions" reference specific memo paragraphs (high agency) or did she write vague chat ("just want to discuss everything")?
- **M003 SEA Glamping:** Did she ship 10 entries with specific Orb concept analysis (not generic descriptions) + price data, by EOD Manila? Did she ask SHARP narrow questions when stuck (welcome), or request a call to "walk through" (R6 signal)?

A flat M002 (acked without engagement) or weak M003 (10 entries without analysis) is an early R6 signal even before Phase-2 gate.

## Tone discipline

External-facing language for Vianca uses: "calibration period", "let's iterate", "we'll look at together", "growth", "support". This file is the only place inside the repo where the strict R6 vocabulary is appropriate.

---

## Incident log

| Date | Incident | Severity | Founder mental-model impact | Action |
|------|----------|----------|------------------------------|--------|
| 2026-06-11 | Call no-show / late arrival — Vianca was >13 min late to scheduled call without prior warning to Founder | MEDIUM | Founder confirmed Tier E judgment: manual-focus value on this unit reduced; reinforces product thesis (Founder OS must absorb ops to AI substrate so Founder personal life isn't hostage to human reliability) | Tier E recorded; supportive external pilot reframe issued (see context/briefs/2026-06-12-vianca-pilot-context.md); no R6 trigger (single instance, not Phase-2 gate failure pattern) |

## Founder mental-model adjustment (2026-06-11)

Founder confirmed direct: «Ценность ручного фокуса Founder на этом юните резко снижена на контрасте с предыдущими ожиданиями».

**Operational meaning** (Tier E, not surfaced to Vianca):
- Founder de-prioritizes ad-hoc engagement / direct hand-holding for this unit
- Vianca cadence stays normal (per OD-073-adjacent autonomous mode for units)
- All routine ops surface via Lana digest, not direct Founder-Vianca DM
- Quality bar holds (Phase-2 gate criteria unchanged), just Founder personal investment of attention reduced
- If Phase-2 gate fails OR pattern repeats → standard R6 review per existing criteria above (no special accelerated path)

**Product insight** (canonized in OD-075 addendum-2):
- This incident operationalizes the core ADHD-thesis: Founder OS must absorb operational uncertainty to AI substrate so Founder personal life is not hostage to individual unit reliability
- Pilot reframe with Vianca (per Founder GO 2026-06-11): her current finance setup + Cursor session usage becomes pilot for ADHD-fit external workflow patterns
- Honest external framing per A002 — supportive, agency-preserving, no exploitative "guinea pig" tone

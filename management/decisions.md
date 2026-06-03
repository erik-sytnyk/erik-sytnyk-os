# Private ODs — management/personal decisions archive

> **Migrated:** 2026-05-26 per OD-043 split rule (deputy migration step 2).
> **Source:** `orbios-os-v3:/log/open_decisions.md` — extracted private/per-person ODs.
> **Audience:** Founder (DEV-01) + Claude on explicit invitation only. Never unit-facing.
> **Rule:** an OD lives here if it contains per-person comp/trial/R6/health/family specifics.
> Public/architectural ODs remain in `orbios-os-v3:/log/open_decisions.md` (tombstones point here).

---

## OD-001 — Vianca compensation model — **RESOLVED 2026-05-17**

$5/hr base + R1 linkage rule + trial cap schedule + $500 ceiling. R6 if ceiling hit without 3 accepted missions.

---

## OD-002 — "High Agency" framing of Vianca — **RESOLVED 2026-05-17**

Vianca enters as Unverified Node. Trial metrics in `/log/management/vianca.md` are the only validation path.

---

## OD-009 — Trial / phase timeline — **RESOLVED 2026-05-17**

**Decision (Erik):** 3-phase nested timeline honoring all three sources:
- **Phase 1 — Kernel (days 1-7)** — cap 20h. For PH-01 after the 2026-05-19 Zero-Touch override: M001 (intro message) + M002 (Written Confirmation → DEV-01 commits acknowledgment) + M003 (SEA Glamping Research) accepted. The old kickoff-call / dump-triage gate is superseded. Vianca = External Input Unit (no repo access).
- **Phase 2 — Trial gate (days 8-14)** — cap 30h. Gate: ≥ 1 real mission accepted in W2 (honors LinkedIn 14-day trial).
- **Phase 3 — Ramp (days 15-28)** — cap 35h/week. CAMP scope phases in. Gate: cumulative ≥ 3 missions accepted by end of W4.

Applied in `/context/personnel/vianca-mitchell-meneses.md`, `/log/management/vianca.md`, `/clusters/ph-01/onboarding_vianca.md`.

---

## OD-015 — Phase-1 quality signal — RESOLVED / SUPERSEDED 2026-05-19

Original 2026-05-17 framing: quality of Vianca's kickoff prep doc + kickoff call questions would be the strongest Phase-1 signal. Superseded by OD-022 Zero-Touch override: Phase-1 signal is now quality of **M002 Written Confirmation** + **M003 SEA Glamping Research** (M003 was later updated from Thai Lawyer triage to SEA Glamping Research — see OD-022 for full history). Captured in `/log/management/vianca.md` § "Phase-1 quality signal".

---

## OD-019 — LEGACY track scope — **RESOLVED 2026-05-19**

**Decision (Erik via Nova / A009):** Legacy Parasites = relatives + fake friends who exploited resources during v1/v2. Non-Orbios social only. Orbios roster (Vianca, Illia) EXPLICITLY EXCLUDED. "Any contact is a breach" — self-imposed Founder rule; system logs breaches, doesn't enforce.

**Historical context:** This resolved the earlier ambiguity from Erik's "Analyze all current human 'units'. Formulate a 'Closing Protocol' for each." Claude's default assumption was non-Orbios social ties only; the resolution confirms that default. Claude will not analyze or design Closing Protocols for Vianca or Illia without explicit Founder override.

> Personal/identity layer of Legacy Parasites list → `erik-sytnyk-os:interpersonal_context.md`.

---

## OD-021 — Thai Partner architectural framing — **RESOLVED 2026-05-19 (Founder override)**

Per A012: reclassified as Core System Requirement. Lives in `/context/founder/stability_requirements.md`, NOT `/context/personnel/`. No Orbios HR contract; no Vianca/Illia tasked with candidate screening; logistical support after relationship forms is acceptable scope.

**Historical context:** Raised 2026-05-18 as an architectural flag against modeling a personal/romantic relationship as an Orbios "functional unit". The concern was collision with `/context/personnel/`, HR dossier conventions, and A002 tone discipline. A012 is the Founder override and structural resolution: Core System Requirement under `/context/founder/`, not Personnel.

> Full personal context → `erik-sytnyk-os:founder/stability_requirements.md` § Thai Partner.

---

## OD-022 — Vianca scope re-contracting — **RESOLVED via Zero-Touch override 2026-05-19**

**Decision (Erik via Nova):** synchronous Vision Delta call cancelled. Replaced with **Zero-Touch async protocol** — written memo + structured written Affirmation Gate + trial-by-fire mission.

**Why the override is correct:** R3 + R4 + R5 actually favor written re-contracting over a call. A call burns Founder cycles for a unit who hasn't yet proven utility. Written ack is verifiable, lower-risk, and tests the working medium itself.

**Implementation:**
- Memo: `/clusters/ph-01/2026-05-19-vision-delta.md` — self-contained, explicit about what changed + what is NOT in her scope.
- Affirmation Gate: written ack block in `/clusters/ph-01/acknowledgments.md` per memo. This **is** mission **PH-01-M002**.
- Trial-by-fire: **PH-01-M003** — SEA Glamping Research (10 high-end glamping/eco-resorts, Orb concept analysis), narrow, time-boxed (EOD Manila), testable. Activates on Erik's M002 acknowledgment. Note: Thai Lawyer triage (OD-023 unblock) is a separate future mission — M003 is no longer the same task.
- Old M002 (Kickoff prep) + old M003 (Dump triage) marked superseded in `active_missions.md`.

**One nuance Claude codified (not a disagreement, a refinement):** Nova's framing "failure = asks for clarification call" is partially right. **Codified version:** vague chat requests before attempting work = failure (correct). Sharp narrow written questions referenced to file/section = high-agency, welcome. Iteration sync ≤ 15 min AFTER first delivery + draft attached = acceptable. This prevents over-correcting into "no human contact" which would itself become a brittleness.

**Trial-by-fire decision rule:** if she ships M002 Written Confirmation + M003 SEA Glamping Research cleanly → moves into normal Phase 1 cadence. If she requests a call to "walk through the memo" before reading it, or produces a vague M003 (generic glamping list without Orb analysis) → Phase-1 R6 signal per `/log/management/vianca.md`.

**Historical context (why this OD existed):** Between Vianca's LinkedIn hire (Friday) and her day 2 (2026-05-19), Orbios underwent major pivots (Aug 4 milestone, 6-track restructure, CAMP crowdfunding, RAIVE AU pivot, Track A primary). None of this was in the kickoff brief she read. Original Claude recommendation was a synchronous Vision Delta call; Erik (via Nova) correctly overrode with Zero-Touch async re-contracting. See `/log/session_log.md` 2026-05-19 entry for the override decision.

---

## OD-024 — Track A KPI framework — **RESOLVED 2026-05-19**

**Raised:** 2026-05-19. **Source:** A010 (Track A as primary objective).

**Decision:** KPI framework adopted. Dashboard created at `/log/founder/track_a_dashboard.md` (2026-05-19). Metrics: BP, Sleep (h + quality), Deep-work hours, Meaningful self-score 1–10, Legacy breach count. Aug 4 binary milestones included. Entry cadence: Friday evening (~30 sec). Claude pre-populates the weekly block; Erik fills values.

**Historical:** raised because Track A was declared Primary Objective but no measurement framework existed. Resolved with lightweight weekly dashboard requiring no new tooling — just a manual Friday log entry.

> BP baseline + daily health logs → `erik-sytnyk-os:bio_metrics.md`.

---

## OD-025 — AI Proxy Shield for LEGACY isolation — OPEN

**Raised:** 2026-05-19. **Source:** Nova data feed + stability_requirements.md update.

**Concept:** An AI agent layer intercepts all incoming messages from designated Legacy Parasite targets (identities in `erik-sytnyk-os`; this repo references them as opaque nodes only). Erik never reads raw messages. The proxy produces a neutral data summary: e.g. "Source: [target]. Topic: apartment inquiry. Tone: aggressive. Proposed response: standard polite decline." Erik approves or ignores. Toxicity is never routed to Founder's attention directly.

**Why it matters for FVE:** Direct message exposure from these sources is documented as a BP-spike trigger. Removing the raw signal while preserving information is the engineering solution.

**Undesigned:**
- What channel(s) need proxying? (Telegram, WhatsApp, email, phone — different interception mechanics)
- Response templates: who drafts them? (Claude can draft; Erik approves once)
- Escalation rule: what warrants surfacing to Erik directly vs. silent-decline?
- Privacy / legal: jurisdictional note on intercepting/filtering messages (UA context)

**Status:** OPEN — concept approved by Founder. Design + implementation pending DEV-01 decision on channel scope.

> Identity list of Legacy Parasite targets → `erik-sytnyk-os:energy_leaks.md` + `interpersonal_context.md`.

---

## OD-035 — REVENUE operational arm: Kyiv apartment sale — **RATIFIED 2026-05-21** (personal/comp details)

> Architectural/operational parts of OD-035 are public in `orbios-os-v3:/log/open_decisions.md`. This entry holds the personal/comp specifics.

**Comp split (private detail):** Savelova = Investor funding $3/hr of UA-02 cluster labor cost; Orbios covers $2/hr. $2 Founder personal top-up NOT an Orbios expense — tracked here, not in orbios books (to keep R7 unit-economics clean and make the personal price visible to Founder).

**Kyiv apartment structural context:** identity/relationship layer of the Kyiv property stakeholders → `erik-sytnyk-os:interpersonal_context.md` + `energy_leaks.md`.

**UA-02 neutralizer hire:** the helper to be hired into UA-02 alongside the investor-node. Personal/relationship specifics of the investor-node → `erik-sytnyk-os`. Org structure (UA-02 as toxic-investor containment cluster class A023) = public.

---

## OD-036 — Vianca trial ratification path (EOW) + Founder-ops-reduction — **OPEN** (Opus 4.7; Erik directive)

**Context:** Erik wants to (a) ratify Vianca's trial passage by end of this week, (b) structurally reduce his own involvement in unit operations (the week's meta-priority; ideal end-state = Founder thinks about creation — Raive + architecture — not survival-optimization).

**Vianca trial status (from Discord evidence):** Phase-1 effectively PASSED. M001 (intro) + M002 (Vision Delta ack, implicit) + M003 (SEA Glamping, delivered as AT-001+AT-002) done. Plus AT-003 (contractors), AT-004 (AI workflow), AT-005 (marketing), AT-006 (hospitality partners) — strong volume, clean reporting, sharp calibration questions. This is a **High Agency confirmation**, not just hypothesis (R2 satisfied).

**Ratification path (deputy executes, Erik ratifies):**
1. Deputy compiles a 1-page **Trial Review** from satellite ticket history + daily logs → `/log/management/vianca-trial-review.md` (core, internal). Metrics vs targets, Phase-1 gate status, recommendation.
2. If metrics green (they appear to be): Erik gives one-line written ratification. Vianca moves from TRIAL (Unverified Node) → **confirmed Operator**, exits calibration into standard schedule.
3. Update `/context/personnel/vianca-mitchell-meneses.md` status + `/log/management/vianca.md`.
4. Per A006 social architecture: confirmed Operator with continued High Agency is on the **Operator → Principal** track (not there yet — needs the promotion criteria — but flag the trajectory).

**Founder-ops-reduction mechanism (the deeper ask):**
- **Root cause of Erik-in-ops right now:** he answered Vianca's AT-005 positioning questions *directly in Discord* (2026-05-20). That's a R5/A017 violation in practice — those questions should have been buffered by Illia or answered from existing repo context.
- **Fix:** strengthen A017 noise-filter. Illia becomes the operational hub for BOTH clusters' execution (PH-01 ops + UA-01 incl. apartment). Erik receives only ratification-class items (money, scope, personnel, trial gates, R6). Everything else stops at Illia.
- **This week's structural target:** Erik's only operational touchpoints = (1) ratify apartment asking price, (2) ratify Vianca trial passage, (3) Friday Track-A dashboard. Everything else routed through Illia/deputy/satellite.

**Status:** OPEN — needs (a) deputy to compile Vianca trial review, (b) Erik's ratification at EOW, (c) Illia briefed as two-cluster operational hub. Recommend deputy starts (a) now; (b)+(c) land by Friday.

---

## OD-037 — Personal/comp details (private portion)

> Architectural/operational parts of OD-037 (UA-02 containment cluster concept, Flags 1–6, A023) are public.

**Comp split (the private layer):**
- Investor-node pays $3/hr of the $5/hr cluster-labor cost → funds UA-02 worker's Orbios comp.
- Orbios/Founder covers $2/hr → this is the Founder's personal transfer (relationship-management cost), NOT an Orbios expense. Track it here, not in company books.
- Labor contract for the helper hire is endable independently of the capital/investment stake. Keep the two ledgers separate always.

**$2/hr personal accounting:** log entries when this is actually paid → `erik-sytnyk-os:management/savelova.md` (personal transfer log section).

**Identity/relationship layer:** the investor-node's personal identity, family-tie context, energy-dynamic history, Shadow Mirror notes → `erik-sytnyk-os:interpersonal_context.md` + `energy_leaks.md`.

**Second-node pipeline (identity private):** the second family-stakeholder with "founder potential" hypothesis — identity in `erik-sytnyk-os:interpersonal_context.md`. Org-side: enters as Investor (if capital) or Operator (if labor) only — never Founder tier until proven across many cycles.

---

## OD-042 — Individual comp/personal details (private portion)

> Strategic decisions, finance workstream architecture, and Vianca trial path from OD-042 are public. This entry holds individual comp and personal specifics.

**Vova (former finance unit) handover:**
- Outstanding: 2025 transaction lists (incl. the past project transactions), local hours/salary tables not yet in Dropbox/KB.
- Compensation for handover time: pay his handover hours at his rate. Message drafted by Illia, Erik to send.
- Specific hours/salary tables when received → `orbios-finance-kb:/accounts/` or `/compensation/` (restricted tier).

**Gleb — crypto-transfer ops:**
- Role: crypto-transfer operational lead (Mercury crypto flows).
- Not a formal Orbios unit. Engagement model: ad-hoc per transfer.
- Comp specifics, wallet/identity details → `orbios-finance-kb:/accounts/` (restricted, never public).

**Mercury financial-authority policy (the personal comp layer):**
- Large transfers → Erik validation.
- Small operational → cluster lead initiates + 1 ops validates (e.g. Illia initiates, Vianca approves as bookkeeper).
- Crypto → Gleb.
- Individual salary/comp rows for each unit are in `orbios-finance-kb:/compensation/` only.
- Subscriptions (Cursor, Antigravity, etc.): amounts go in finance-kb, not in public OS.

---

## OD-072 — SWIFT transfer trace (Vianca PH-01-01 payment) — 2026-06-03

**Status:** OPEN (investigation active)

**Trigger:** Vianca (PH-01-01) reported on 2026-06-03 that the SWIFT transfer sent last week ($500 trial ceiling / week-1 base payment) was not received.

**Details:**
- Vianca verified her banking details; all information is correct on her end.
- Her bank advised that the sender (Orbios/Erik) must initiate a trace or file a report from their side (via Mercury/sender bank) to locate or refund the funds.

**Resolution:**
- **Temporary pivot:** Founder is OK with using CRYPTO for now to ensure Vianca receives her funds.
- **Accounting:** The pending SWIFT transaction is not counted as payment for now.
- **Action item:** Erik to report/trace the SWIFT transfer from the sender (Mercury) side.
- **Reference:** Once completed, log crypto payout txn-id in `orbios-finance-kb`.

**Cross-refs:** OD-001 (Vianca comp model), OD-052 (Vianca Phase 2), `context/personnel/vianca-mitchell-meneses.md`.


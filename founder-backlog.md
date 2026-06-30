# Founder Backlog

**Purpose:** persistent storage для Founder items которые легко потерять между сессиями.
Architect grep'ит файл при старте каждой сессии и поднимает actionable items.

**Format:** per `sops/task_management.md` — `T-NNN` global counter, Founder surface.

## SESSION FOCUS (2026-06-22)

| | |
|---|---|
| **Active (primary)** | **T-031** — file intake + Google Drive asset pipeline |
| **Active (secondary)** | **T-037** — company email restore (blocked since Orbios 2.0) |
| **Mode** | Architect design → Founder account unblock → Composer WPs |
| **Background** | All other open T-NNN — no active Lana pull unless Founder surfaces |

---


### T-001 — Activities list для Track A
- **Owner:** founder
- **Type:** action
- **Status:** open
- **Trigger:** energy/time slot есть
- **Acceptance:** список в `modules/founder-private/health/activities.md` + календарь slot'ы
- **Notes:** personal/health · From Nova brief 2026-05-30

### T-002 — Monthly expense tracking — milestone
- **Owner:** founder
- **Type:** action
- **Status:** open
- **Trigger:** когда finance-loop устаканится
- **Acceptance:** schema для personal monthly tracking + первый месячный rollup
- **Notes:** personal/finance · From Nova brief 2026-05-30

### T-003 — Owner's Distribution $1,500 USD (стартовый высокий базовый)
- **Owner:** founder
- **Type:** action
- **Status:** in-progress
- **Trigger:** now
- **Acceptance:**
  1. Mercury Owner's Distribution выполнен на Founder personal account
  2. Отмечен здесь как **done** с датой + **Mercury txn-id** (обязательно до закрытия)
  3. Когда finance conveyor запустится — backfill в ledger.jsonl:
     entity=founder-personal, dir=out, category=spend.comp.owner-distribution,
     amount=1500, ccy=USD
- **Notes:**
  - 2026-05-31: Founder scheduled 1,500 USD Owner's Distribution for **2026-06-01** (manual scheduling; OK for this instance).
  - **Pending:** settlement / Mercury txn-id — do not mark done until confirmed.
  - **Future:** monthly automation expected from 2026-06; this manual instance is OK.
  - First Owner's Distribution instance. Ongoing cadence ties to T-002 monthly tracking milestone.

---

### T-004 — Phase 3 Discord bot setup (~15 мин owner-action)
- **Owner:** founder
- **Type:** action
- **Status:** open
- **Trigger:** now (low-friction окно)
- **Acceptance:** Per scripts/discord-import/SETUP_PHASE3.md — Discord bot создан, invited в PH-01 server (Read Message History only), token в Windows Credential Manager, config.toml заполнен, Task Scheduler XML импортирован, smoke run прошёл. После — 4x/день автономно.
- **Notes:** Pipeline готов (OD-061). Architect видит свежий Discord контекст со следующей сессии.

### T-005 — Pop!_OS dual-boot установка (time-boxed)
- **Owner:** founder
- **Type:** action
- **Status:** open
- **Trigger:** свободный weekend slot
- **Acceptance:** Pop!_OS установлен как secondary, boots, базовый AI-stack доступен для dev experiments. **Hard time-box: 4 часа.** Если yak-shaving превышает — abandon, rollback, защита FVE.
- **Notes:** Personal dev experiment с AI automation в режиме dev.

### T-006 — Limit личного контакта с Broker-1 (Savelova) ≤ 2x/неделю
- **Owner:** founder
- **Type:** action
- **Status:** in-progress
- **Trigger:** ongoing protocol
- **Acceptance:** Day-to-day Telegram/Viber/etc прекращён. Контакт только: (а) ≤2x/неделю в Founder-выбранное время когда Track A в ресурсе, ИЛИ (б) через терапевта как третью сторону для сложных family узлов.
- **Notes:** Per Nova framing 2026-05-30 + OD-037 hardening. Операционка по квартире — через **Illia relay → Lana digest** (UA-02-M001-T16), not routine Founder↔participant channel. **2026-06-17:** goal = **delegation**, not endurance; on-site inventory via participant (T17); Founder gates only.

### T-007 — Setup therapist channel для family-content
- **Owner:** founder
- **Type:** research
- **Status:** in-progress
- **Trigger:** Olya first session (Track A support — role TBD); may extend beyond family-only
- **Acceptance:** Support contact registered in `health/support-network.md`; first session logged (`health/sessions/`); role in OS clarified; if family buffer agreed → third-party channel for Broker-1 complex nodes active
- **Notes:** Channel = A025-compatible buffer (session content = Tier E). **Pre-gen capture:** `health/support-network.md` § Lana codes. Olya ≠ classic therapist — Founder clarifies post-session. Scaffold 2026-06-17.

### T-008 — Prep `~/orbios-migration-finance/` scratch + USB A/B
- **Owner:** founder
- **Type:** action
- **Status:** open
- **Trigger:** when ready для первой finance миграции (after Vianca Unit-Lana handoff 2026-06-02 per Erik)
- **Acceptance:**
  1. `mkdir ~/orbios-migration-finance/{financial-data-dump,meta-info-for-migration}`
  2. `cd ~/orbios-migration-finance && git init` (локально, без remote)
  3. Куплены + зашифрованы 2 USB-флэшки (BitLocker), маркированы A/B
  4. Первый dump-материал положен в financial-data-dump/ (Mercury экспорт или подобное)
- **Notes:** Это разблокирует первый прогон OD-055 conveyor. Vianca ведёт **PH-01-M008-T11** проактивно на этом scratch (совместно с Founder: dump + FOUNDER-ANSWER). См. `clusters/ph-01/active_missions.md`.
- **2026-05-31 Review & Ask:** MQ1 = **нет** (scratch not created yet). Next: Erik after Vianca Discord handoff.
- **Week DoD (MQ7, 2026-06-01):** Finance module ready by Fri **or** minimum structure understood (OD-054/055, scratch layout, gates) — full ledger not required this week.

### T-009 — Loyalty bonus profile-history tracking (ledger metadata)
- **Owner:** founder + architect (schema) → finance-kb when live
- **Type:** action
- **Status:** open
- **Trigger:** now (metadata only)
- **Acceptance:**
  1. Loyalty accrual fields defined (profile-history based, no cash payout before 2027)
  2. Recording started in agreed store (ledger.jsonl pattern or finance-kb draft — post T-008)
  3. Documented in `LOYALTY_UBI_PROTOCOL.md` § implementation pointer
- **Notes:** Founder MQ2 2026-05-31 — track now, pay later; other bonus types until 2027.

### T-010 — Password discipline: design discussion + UA-02 precedent rotation
- **Owner:** founder + architect (discipline design) → lana (implementation)
- **Type:** action + research
- **Status:** open
- **Trigger:** when Discord UA-02 server gets real sensitive activity OR when password-discipline design session scheduled (whichever first)
- **Acceptance:**
  1. Design session: how to store passwords across Orbios (secrets/ gitignored, password manager, Credential Manager for tokens) — formalize separation rules
  2. Add forbidden-pattern detection to pre-push hook: pattern matching Word-Word-Symbol-Digit credential format → prevent future leaks of this shape
  3. Scrub literal password from SOPs + session logs → replace with placeholder syntax `<password from secrets/<cluster>-accounts.md>`
  4. Rotate the actual UA-02 Gmail + Discord password (new value, secrets only)
  5. Document precedent: this case becomes the worked example for password-discipline SOP — what went wrong (literal in 5+ committed files), how it was caught (Architect review), how rotation closed it
- **Notes:** Founder decision 2026-06-02: defer urgent rotation (no sensitive activity tied yet), use as precedent for discipline design. Compromised password remains in git history forever — accepted risk pending design + rotation. Trigger escalation: any real sensitive activity in UA-02 Discord = immediate rotation moves to P0.

### T-011 — Founder UBI target raise $1,500 → $3,000/mo
- **Owner:** founder + finance-kb (when live)
- **Type:** action
- **Status:** open
- **Trigger:** when UA-02 capital starts releasing + PH-02 RE-research (T-013) yields revenue path OR when other cashflow feeders close gap
- **Acceptance:** Sustained $3k/mo Founder distribution from operational + asset streams (UA-02 sale proceeds, RE-agency commission share, RAIVE revenue, other). Tracked monthly in finance-kb.
- **Notes:** Founder GO 2026-06-02 (Nova manifesto packet (a)). Path = 3 parallel feeders per Nova framing: UA-02 capital + PH-02 commission + RAIVE revenue. T-008 (finance scratch prep) + finance migration must precede tracking.

### T-012 — Health self-track + Architect Track A surface (no unit involvement)
- **Owner:** founder
- **Type:** action + research
- **Status:** open
- **Trigger:** now (folder setup); strict enforcement deferred until OS in "OK mode" (stable autonomous ops)
- **Acceptance:**
  1. `modules/founder-private/health/` folder structure: daily BP entries (morning, before first coffee — per Founder current practice)
  2. Format: `health/YYYY-MM-DD.md` with BP + pulse + notes
  3. Architect grep'es founder-private/health/ at session start if accessible → surfaces "no BP data for N days → Track A signal" — internal Architect protocol, NOT enforced on Vianca/Lana
  4. Existing canon BP > 145/90 → read-only mode preserved as self-enforced ceiling
- **Notes:** Founder GO 2026-06-02 (Nova packet (b)) WITH explicit boundary: «я хочу видеть результаты от системы, чтобы расслабиться, сейчас интересы компании выше; до non-stop AD проверки нужен OK режим ОС». Strict daily enforcement = deferred trigger. Vianca / Lana DO NOT ping Founder for health data per R5 + FTS. Architect discipline handoff: add "grep health folder at session start" to architect-init.md or handoff convention.

### T-013 — PH-02 RE-research path + Partner-Contact Agent role design
- **Owner:** founder (direction) + architect (role design) + future PH research unit (Filipino AI researcher)
- **Type:** research + design
- **Status:** open
- **Trigger:** Founder explicit move toward Katya partnership conversation
- **Acceptance:**
  1. **Research approach:** Find Filipino AI researcher who does property-research-on-commission for Katya (apartment search Phuket — Kamala or Bang Tao). Real value delivered = warm-up for partnership conversation. Founder pays research, Katya receives valuable output, Founder enters partnership talk from giving-value position.
  2. **NEW role design needed:** Partner-Contact Agent / BD Architect — proactively researches partner candidates, frames opportunities, runs initial relationship-warm-up, brings prepared proposals to Founder. NOT just redirect-to-Founder-talk-yourself. Currently no such persona in agent/personas/ (Architect = structure; Lana = operations; Composer = build). Real role gap surfaced by Founder.
  3. Architect proposes draft persona (scope, escalation, tier, model) for ratify before implementation.
- **Notes:** Founder GO 2026-06-02 (Nova packet (c)) with architectural insight on role gap. Privacy: Katya = private-tier identity (A025/OD-038); any serv-public reference = opaque handle. Conversation flow lives in founder-private until partnership lands.

### T-014 — Thai partner / camp co-founder discovery
- **Owner:** founder
- **Type:** action + research
- **Status:** in-progress
- **Trigger:** Founder discretion; **refined 2026-06-17** post Olya session
- **Acceptance:**
  1. ICP documented: Thai woman, uni grad (tourism/adjacent), province origin, Bangkok-based, co-build camp business (A012)
  2. **Video interview** — business checklist (Lana pre-gen) + **chemistry gate (Founder only)**
  3. Discovery + logs in founder-private; semi-personal boundaries per `sops/semi_personal_ops.md`
  4. If partnership lands → A012 integration path (not Anna ground-lead class)
- **Notes:**
  - Channels: dating apps, Thai FB groups, warm intros (`relationships/t-014-camp-co-founder-search.md`)
  - **2026-06-17:** Olya session — support contact opposed idea; Founder treats as validation signal (Tier E session log)
  - Anna = construction ground lead — **separate role**
  - Miu Miu: `relationships/miu-miu.md`
  - Nova post draft: `nova-packets/2026-06-08-thai-partner-post.md`

### T-015 — Nana exit alternatives — Architect proposes options before construction
- **Owner:** architect (option surface) + founder (decision) + thai lawyer (execution)
- **Type:** research + action
- **Status:** in-progress
- **Trigger:** now (architectural homework before CAMP construction unblocks)
- **Acceptance:**
  1. Architect drafts option matrix for Nana exit from CAMP ownership: buy-out at 25k THB (current canon), share transfer to Anna (50/97 or full), transfer to future Thai partner (T-014), dilution via new shareholder structure, sale to deal-structurer / outside investor, legal forced-exit mechanisms (Thai law), wait + leverage non-cash levers
  2. Each option: cost / time / risk / dependency / Founder-effort profile
  3. Founder reviews + picks path (or hybrid)
  4. Picked path → M006 Task 1 updated + Thai lawyer engaged
- **Notes:** Founder direction 2026-06-02 (Nova packet (f)) — «ОС должна предлагать альтернативы если возможно, сейчас вопрос как убрать токсичного паразита Нану из наших кэмп партнеров перед началом строительства, Анна заинтересована в работе». Anna = ONE option, not predetermined. Thanan = contractor not partner (different class). Architect homework: draft option matrix in next session.
  - **Update 2026-06-27:** Founder left 25k THB with Anna (new Thai partner) for Nana's exit to secure the land document, keys, and car technical passport. Once documents/keys are received, Orb construction planning can begin.

### T-016 — Orb 1 site selection (Camp 0 plot placement)
- **Owner:** founder + Anna (external)
- **Type:** gate
- **Status:** open
- **Trigger:** now — before platform build commit
- **Acceptance:**
  1. Founder locates 2025 site layout archive (water-edge rule)
  2. On-site or video walkthrough with Anna: confirm Plot 5 (Thanan provisional) or pick alternate footprint
  3. Decision logged: GPS pin + photo + chosen micro-plot dimensions → repo (`tracks/camp/context/camp-activation-plan-2026-06.md` § A1 update) or founder-private dump
- **Notes:** Landed Lana 2026-06-15 from Nova hallucination catch session. Hyperfocus Pillar II. Cross-ref `clusters/ua-01/notes/site-readiness-2026-05.md` Plot 5.

### T-017 — Camp site fixes checklist (Phase B)
- **Owner:** founder + Anna (external)
- **Type:** action
- **Status:** open
- **Trigger:** parallel to T-016; sanitation may start if Anna 50k THB quote holds
- **Acceptance:** Items B1–B8 in `tracks/camp/context/camp-activation-plan-2026-06.md` tracked with done/blocked status; at minimum B3 (sanitation) + B4 (platform) + B5 (Orb inspection) closed before «livable Orb» claim
- **Notes:** Neighbour storage (B1) and Nana exit (B6) remain legal/ops P0 from prior canon. UA-01 archived — Founder-direct + Anna path per 2026-06-11 restructure.

### T-018 — Waiting list + Gvardia funnel — spec → build
- **Owner:** architect (spec gate) → composer (build) + founder (sequencing gate)
- **Type:** research + action
- **Status:** open
- **Trigger:** post Founder gate on sequencing (during vs after Orb 1 livable)
- **Acceptance:**
  1. Architect signs off draft `tracks/camp/context/waitinglist-pipeline-spec-draft.md` (privacy + OD-023 form copy)
  2. Supabase schema deployed + first test row ingested + scored
  3. Lana digest returns real counts (may be 0)
  4. Anti-hallucination rule active: no agent reports funnel metrics without live query
- **Notes:** Nova 2026-06-15 invented 20 investors + 8 Gvardia elite — **ground truth = 0**. Target architecture preserved in spec draft; Camp 1+ investor search (Phase D) follows Orb 1 proof per A015.

### T-019 — AU warm intro pool (Hybrid Revenue)
- **Owner:** founder
- **Type:** action
- **Status:** open
- **Trigger:** when ready — not blocking PH-01 cold outreach (M015)
- **Acceptance:** List of 3–10 warm intro targets (name + relationship + angle) logged in founder-private or forwarded to Illia; PH-01 templates intro asks; Real Estate vertical Phase 2 activates from this list
- **Notes:** Founder 2026-06-17 — Yoan removed from hybrid revenue warm-intro canon; Founder adds contacts async. No pre-listed names in public-tier canon.

### T-020 — Physical inventory — Thailand (belongings + documents)
- **Owner:** founder (capture) + local organizer (physical sort today)
- **Type:** action
- **Status:** open
- **Trigger:** now — organizer sorts + labels today; Founder indexes tomorrow if energy
- **Acceptance:**
  1. `LOC-TH-PHUKET-HOME` populated per `sops/physical_inventory.md`
  2. Every labeled box has `CN-TH-*.container.md` (items + optional nested containers)
  3. **Documents** in dedicated container(s) `CN-TH-DOC-*` (passports, contracts, scans index) — not lost in misc boxes
  4. Optional walkthrough video per box → OD-064 `AST-*` index
- **Notes:** Container Tree v1 ACTIVE. Parallel to T-023 / M001-T17 (Kyiv) — not blocking. **~15 min/box**; stop when tired (Track A). **2026-06-22:** Founder re-surfaced — опись вещей в Тае; remains open.

### T-023 — Kyiv apartment inventory — Founder prep pack
- **Owner:** founder + Lana (brief) → Illia relay (field)
- **Type:** action
- **Status:** open
- **Trigger:** before M001-T17 visit closes — prep can run in parallel with T-020
- **Acceptance:**
  1. `clusters/ua-02/inventory/locations/LOC-UA-KYIV-APT.location.md` checklist complete
  2. Field brief sent to Illia for participant visit (`sops/physical_inventory.md` §5): label scheme `CN-UA-*`, doc container `CN-UA-DOC-001`, photo + written опись
  3. After visit: Illia/agent-log confirms containers landed under `clusters/ua-02/inventory/containers/` + `documents.md` row closed
- **Notes:** Founder does **not** run on-site visit — prep + gates only. Unblocks title-deed certainty (M001-T17/T18). Same Container Tree schema as T-020. **2026-06-22:** Founder re-surfaced — опись вещей в Украине; remains open.

### T-021 — Founder comms automation (non-Discord) — design track
- **Owner:** architect (design) → ph-01 ops (operator pilot) + Lana (intake)
- **Type:** research + design
- **Status:** open
- **Trigger:** long-term vector; Phase 1 when operator bandwidth + T-010 secrets discipline ready
- **Acceptance:**
  1. Vector ratified in `context/vectors/founder-comms-automation-v1.md` ✅
  2. Architect proposes Phase 1 pilot (which channel first: email / TG / Viber)
  3. One channel running operator+AI draft loop with Founder digest-only for 4 weeks
- **Notes:** Founder 2026-06-17. Discord excluded by design. Aligns vision-v1 § 2.5 + R5.

### T-022 — Company Task Pool + OS dispatch (Architect design)
- **Owner:** architect (design) → Lana (steering ops) + Composer (generator)
- **Type:** research + gate
- **Status:** open
- **Trigger:** Architect session on `context/proposals/task-pool-cluster-dispatch-v1.md`
- **Acceptance:**
  1. Architect digest: ratify / revise CTR model + WP packages
  2. Founder **GO TASK-POOL v1**
  3. WP-TASK-1/2 landed (registry generator + vector_steering SOD)
- **Notes:** Founder 2026-06-17 — pre-form task pool before hires; PH-01 + UA-02 dispatch.

### T-024 — TH-01 Founder Assistant — Yoan sourcing launch
- **Owner:** founder (send brief + pay) → Yoan (search)
- **Type:** action
- **Status:** in-progress
- **Trigger:** GO Yoan #1 $200 ratified 2026-06-17
- **Acceptance:**
  1. Brief sent to Yoan from `clusters/th-01/recruitment/yoan-sourcing-brief.md` ✅ landed + **sent 2026-06-17**
  2. Sourcing fee **$200** (Variant 1) paid / agreed with Yoan
  3. **3–5 finalists** received; Founder interviews → trial candidate selected
  4. TH-01 cluster activation criteria met (personnel, mission) post-hire
- **Notes:** Not warm-intro pool (T-019). Separate TH-01 track. Yoan window until ~July 2026. **TH-01-01 = assistant slot only** — DEV-01 holds cluster lead + Camp P0; VR-FITNESS research backlog on TH-01 (not PH-01) per Founder 2026-06-22 → `clusters/th-01/backlog.md`.

### T-025 — Savelova one-way channel (Founder-initiated only)
- **Owner:** founder (design) → Illia/Sergey (enforcement)
- **Type:** action + protocol
- **Status:** proposed
- **Trigger:** Founder explicit 2026-06-17 — all direct contacts painful; only sustainable mode = one-way venting when Founder chooses
- **Acceptance:**
  1. Channel design documented in `relationships/savelova-one-way-channel.md`
  2. `context/contractors/savelova.md` + `roles.md` updated with operational one-way invariant (no toxicity language in public tier)
  3. Speaker buffer active (Illia interim → Sergey permanent) — Savelova communicates via Speaker only
- **Notes:** Track A protection (FVE). **Lana boundary:** no family toxicity / verbatim in public tier. Cross-ref T-006/T-007 (contact limit + therapist buffer). Olya session context in `health/sessions/2026-06-17-olya.md`.

### T-026 — UA-02 Speaker search (Сергей / Вова / новый УКР)
- **Owner:** founder (criteria + decision) → Illia (search if needed)
- **Type:** research + gate
- **Status:** proposed
- **Trigger:** One-way channel requires reliable Speaker buffer; Сергей approved but onboarding pending; Вова / новый поиск как альтернативы
- **Acceptance:**
  1. Decision matrix ratified: Сергей (default if no Vova preference) vs Вова (confirm Tier E identity) vs новый поиск (criteria in `tasks/ua-02-speaker-search.md`)
  2. If Сергей → T-NN «unblock Sergey onboarding» (surname + R5 gates: Cursor Pro, access tier)
  3. If новый поиск → criteria + Illia relay; search launched only after T-025 channel design live
- **Notes:** Сергей = informatics teacher background; fit for Speaker (coordination + SOP execution). Вова = not in repo (Tier E or new). Search criteria: Ukrainian, ops coordination, Discord + OS fit, boundary enforcement with A023 participant. File: `tasks/ua-02-speaker-search.md`.

### T-027 — Founder Schedule hybrid model (Discord + OS)
- **Owner:** founder (design) → Lana (implementation)
- **Type:** action + SOP
- **Status:** proposed
- **Trigger:** No calendar support in OS; 10:00–17:00 Thai time, 6 days/week, protect against overwork
- **Acceptance:**
  1. SOP `sops/founder_schedule.md` ratified (hybrid Discord `#schedule-updates` + OS source of truth)
  2. 30-min atomic blocks implemented (non-divisible; early end OK)
  3. Justification gate on unit/agent side (not Founder)
  4. Lana reads schedule at session start; proposes slots
- **Notes:** External request form deferred to backlog. TH-01 assistant (future) requires admin access → see T-028.

### T-028 — Founder shared data module (calendar + operational data)
- **Owner:** founder (scope) → Architect (design review recommended)
- **Type:** research + module
- **Status:** proposed
- **Trigger:** TH-01 assistant needs admin access to Founder schedule and working data without full founder-private exposure
- **Acceptance:**
  1. Module location decided (`modules/founder-shared-data/` or `modules/founder-private/shared-data/`)
  2. Initial contents: `schedule/`, `preferences.md`, `contacts.md`
  3. Access model: Lana (read/write), TH-01 assistant (admin), other units (read-only or none)
  4. Integration with T-027 schedule SOP
- **Notes:** May require Architect review for access control and submodule discipline. Not blocking T-027 Phase 1–3.

### T-029 — Revolut bank change
- **Owner:** founder
- **Type:** action
- **Status:** done
- **Trigger:** before 2026-06-26 (intake 2026-06-17 — Thai address / personal bank track; separate from PH-01 M014-T04 Mercury Column)
- **Acceptance:** Revolut bank change completed in app; account operational
- **Notes:** **Done 2026-06-20** — Founder confirm (Lana session). Prior session recommended bank visit Thu–Fri 2026-06-18/19; landed retroactively as T-029 on close.

### T-030 — AU Wise personal account — proof + transfer (~$2.7k stuck)
- **Owner:** founder
- **Type:** action + research
- **Status:** open
- **Trigger:** when Thai personal banking track stable (post T-029); not P0 unless runway pressure
- **Acceptance:**
  1. Path to move ~$2.7k off AU-registered Wise account identified (proof requirements mapped vs Thai baseline)
  2. Proof-of-address / verification route scoped via trusted acquaintances (AU) — effort estimate vs value
  3. Either transfer executed **or** explicit defer decision logged with reason (not silent drift)
- **Notes:** Personal Wise registered on **Australian address**; outbound / full access requires proof harder than Thai track. Likely needs help through acquaintances — **FVE risk** (coordination + document chase). Separate from company Mercury/Wise ops (M014). Intake 2026-06-22 Lana session.

### T-031 — File intake + Google Drive asset pipeline (SESSION FOCUS)
- **Owner:** architect (design) → founder (account gate) → composer (implement)
- **Type:** action + gate + research
- **Status:** in-progress
- **Trigger:** now — **session focus 2026-06-22**
- **Acceptance:**
  1. Company Google account unblocked (recovery verified; delegation doc)
  2. Shared Drive folder tree live (Architect-ratified topology)
  3. Intake path documented: text dump + files → `.asset.md` indexes in git
  4. End-to-end smoke test (1+ real blob indexed + triage ref)
  5. SOP addendum: **Google Drive primary**; Dropbox legacy/supported only
- **Notes:** OD-064 spec exists but **assets not connected** — zero production `.asset.md`. Architect packet: `context/proposals/file-intake-gdrive-v1.md`. Collateral unblock: PH-01-M009-T03 recruiting inbox (`jobs@orbios.io`). Background queue: all other T-NNN.

### T-032 — Camp + Orbios website — minimum refresh + agent workflow
- **Owner:** founder (sequencing) → composer (build) or agent-assisted interim
- **Type:** action + gate
- **Status:** open
- **Trigger:** minimum via agent now **or** defer full pass until first adequate dev hire — Founder discretion
- **Acceptance:**
  1. `orbios.org` (and camp-facing pages if separate) reflect current v3 baseline at **minimum viable** level — not legacy crowdfunding copy
  2. Short SOP or README: how to edit/deploy site **through agent** (Composer TZ-block, repo path, deploy gate)
  3. Explicit defer note logged here if waiting for dev hire
- **Notes:** Legacy site flagged outdated in `tracks/camp/README.md`. Full redesign not required — minimum + agent instructions. May pair with T-018 waiting-list funnel when live.

### T-033 — Home ants (Phuket) — pest control
- **Owner:** founder
- **Type:** action
- **Status:** open
- **Trigger:** convenient home-maintenance window
- **Acceptance:**
  1. Ant infestation at Phuket home addressed (treatment or structural fix — whichever closes issue)
  2. If reusable method found → one-line note for camp sanitation track (cross-ref T-017 B3)
- **Notes:** Home P0; camp relevance **later** (not blocking construction). No unit involvement.

### T-034 — Laptop warranty repair — Phuket Town
- **Owner:** founder
- **Type:** action
- **Status:** open
- **Trigger:** trip to Phuket Town (service-center window)
- **Acceptance:**
  1. Laptop delivered to warranty authorized service in Phuket Town
  2. Ticket / RMA number + expected return date logged (founder-private note or here)
- **Notes:** Warranty path — not ad-hoc repair shop unless warranty rejects.

### T-035 — Auto phone top-up via OS
- **Owner:** founder (operator choice) → architect (design) → composer (automation)
- **Type:** action + research
- **Status:** open
- **Trigger:** personal ops automation slot; evaluate Thai operator **contract** vs pay-as-you-go API
- **Acceptance:**
  1. Recurring mobile balance top-up runs without manual Founder action (scheduled or threshold-triggered)
  2. Operator + payment path documented (secrets tier — not public repo)
  3. Contract terms reviewed if postpaid/auto-recharge requires it
- **Notes:** Cross-ref T-021 (comms automation vector). Thai carrier contract may simplify recurring top-up.

### T-036 — Orbios US taxes 2025
- **Owner:** founder (gate) + vianca (reconciliation) → duatax-ira (filing)
- **Type:** action + gate
- **Status:** open
- **Trigger:** 2025 transaction set reconciled in finance-kb (post T-008 / OD-055 conveyor)
- **Acceptance:**
  1. Reconciled 2025 Orbios transaction export delivered to Ira/DuaTax per `context/contractors/duatax-ira.md`
  2. US filing for tax year 2025 filed or explicitly scheduled with Ira
  3. Filing confirmation date logged (finance-kb — not public tier)
- **Notes:** Finance figures = restricted tier (OD-042). Blocked on reconciliation completeness — not Founder manual spreadsheet work. Vianca bookkeeper track when live.

### T-037 — Company email restore (Orbios 2.0 block) — SESSION FOCUS secondary
- **Owner:** founder (account recovery + delegation) → lana (inventory)
- **Type:** action + gate
- **Status:** open
- **Trigger:** parallel to T-031 — same Google account boundary; lower priority than file-intake pipeline design
- **Acceptance:**
  1. Company mailboxes operational: at minimum **`jobs@orbios.io`** (recruiting) + inventory of other `@orbios.io` / legacy 2.0 addresses
  2. Delegation live: Vianca + Illia per role matrix (`ph-01-02-jod.md` inbox policy)
  3. PH-01-M009-T03 recruiting inbox blocker closed (`clusters/ph-01/agent-logs/2026-06-11-*`)
  4. Temporary `jobs.orbios@gmail.com` migration path decided (keep / retire / alias)
- **Notes:** Blocked since **Orbios 2.0** era. Cross-ref T-031 § company Google account. Not personal Gmail — company-owned only. `sops/founder_schedule.md` + Discord `#schedule-updates` unaffected.

### T-038 — Founder personal subscriptions audit
- **Owner:** founder (decisions) + lana (inventory draft)
- **Type:** action + research
- **Status:** open
- **Trigger:** personal ops cleanup window; not blocking T-031/T-037
- **Acceptance:**
  1. Master list: all active personal subscriptions (SaaS, streaming, AI tools, gym, etc.) with cost + renewal date + payment method
  2. Each row: **keep / cancel / downgrade / migrate-to-company** (→ T-039)
  3. List stored founder-private (`subscriptions/personal.md` or equivalent)
- **Notes:** Separate from company tier. Finance amounts → finance-kb if comp-related; here = operational inventory only.

### T-039 — Company subscriptions audit
- **Owner:** founder (gate) + vianca (inventory) + lana (public-tier index)
- **Type:** action + research
- **Status:** open
- **Trigger:** post T-037 email restore OR parallel if billing emails reachable
- **Acceptance:**
  1. Master list: Orbios-paid subscriptions (Cursor, Discord, Google Workspace?, domain, hosting, Mercury-adjacent tools, etc.)
  2. Owner + cluster assignment + renewal + secrets location documented
  3. Orphans from Orbios 2.0 flagged for cancel or migrate
  4. Index in serv-public pointer or `context/company-subscriptions.md` stub (no secrets in git)
- **Notes:** Cross-ref T-038 for items Founder currently pays personally that should be company. Aligns with OD-064 asset/provider hygiene.

### T-040 — Founder calendar — populate this week (+ ongoing)
- **Owner:** founder (confirm blocks) + lana (sync)
- **Type:** action
- **Status:** in-progress
- **Trigger:** now — week of 2026-06-22
- **Acceptance:**
  1. Week schedule file live per `sops/founder_schedule.md` hybrid model (`modules/founder-private/schedule/`)
  2. **Wed 2026-06-25:** psychological practice block confirmed (time TBD by Founder)
  3. Lana reads schedule at session start; Discord `#schedule-updates` synced when channel live
  4. Other recurring blocks (deep work, camp, health) added as Founder surfaces
- **Notes:** T-027 SOP ratified 2026-06-19. T-028 shared-data module deferred — schedule lands in founder-private for now. **First landing:** `schedule/2026-06-22-week.md`.

### T-041 — EPIC: Orbios 1.x / 2.x data dump + legacy import
- **Owner:** founder (Phase A inventory) → lana (triage) → composer (Phase B pointers)
- **Type:** action + gate + research
- **Status:** open
- **Trigger:** after T-031 intake plumbing live OR parallel Phase A inventory only
- **Acceptance:**
  1. **Phase A** complete: all candidate sources listed + keep/discard/decide-later in `log/management/orbios-2x-repos-archive-decisions.md`
  2. **Phase B:** per-source `.asset.md` pointers per `sops/orbios-2x-import.md`
  3. **Phase C:** GitHub archive + Discord export decisions executed for ratified sources
  4. **Phase D:** high-criticality blobs cloud-mirrored (pairs with T-031 GDrive)
- **Notes:** **Epic-level** — multi-session. KB repos, Discord servers, doc archives from Orbios 1–2. Not a single dump file — phased SOP. `context/migration/source-register.md` updated as sources land.

### T-042 — Fitness training start (trainer — loan outstanding)
- **Owner:** founder
- **Type:** action
- **Status:** open
- **Trigger:** coordinate first session with trainer; reconcile loan separately
- **Acceptance:**
  1. First training session scheduled + completed (in-person, Phuket)
  2. Cadence agreed (e.g. N×/week) + logged in schedule (T-040)
  3. Loan/repayment terms with trainer documented founder-private (amount, timeline — no figures in public tier)
- **Notes:** Trainer = prior personal loan recipient. Cross-ref T-001 (activities list) + T-012 (`health/` BP track). Track A — not company mission unless later formalized as camp wellness ops.

### T-043 — Toptal sunset — removed from mental load
- **Owner:** founder
- **Type:** decision (closed)
- **Status:** done 2026-06-26
- **Trigger:** Toptal opportunistic channel silent 60+ days; 0 contracts
- **Acceptance:**
  1. ✅ Mental load removed 2026-06-26 (Founder direction during Vector queue Phase 1 day 2 session)
  2. Не ждать active inbound; если notification приходит — review case-by-case
  3. Если 0 за 3 месяца от today (cutoff 2026-09-26) → archive entirely; remove from tooling
- **Notes:** Per state-of-orbios 2026-06-26 priority pivot — Toptal de-prioritized; REVENUE focus shifted to Patrik partnership + apartment sale + active outbound pipeline. Not a source of runway expectation anymore.

### T-046 — TH-01-01 (Liza) onboarding — Founder personal assistant + TH-01 sub-node deployment
- **Owner:** founder (gate decisions) → Liza (self-deployment per Founder direction)
- **Type:** infrastructure + onboarding + sub-node bootstrap
- **Status:** open (non-primary capacity as of 2026-06-30; primary slot → T-053 Анжелика)
- **Trigger:** Yoan-found candidate (₽200 placement); Founder questionnaire review 2026-06-29 → fit verdict GO
- **Candidate:** Новикова Елизавета Антоновна, 23, currently not employed; questionnaire indicates strong responsibility orientation + AI tools comfort + admin process experience (beauty salon network) + social media (IG/TikTok content)
- **Scope:** Founder personal assistant в контуре TH-01 cluster; focus = Founder Track A support + UA-02 apartment sale coordination
- **Acceptance (phased):**
  - **Phase 0** (week 1): Email `th01.orbios@gmail.com` registered → Cursor Pro purchased on that email ($20/mo, TH-01 envelope pre-auth) → Discord registration + Orbios server TH-01 channel access → GitHub account + orbios-os read-only access → Read assignment (vision + manifest § Tracks + Charter v1 + Vector persona)
  - **Phase 1** (weeks 1-2): First mission Founder Track A schedule organization + apartment sale UA-02 coordination kickoff (Founder Track A schedule = low-stakes learning surface; UA-02 coordination = primary long-term scope)
  - **Phase 2** (weeks 2-4): Activity audit Illia/Vianca per intake D3 + Founder Track A maintenance routine + TH-01 sub-node self-deployment (Liza builds `clusters/th-01/` docs)
  - **Phase 2 graduation:** ≥3 missions accepted без quality issues + activity audit complete + apartment sale workflow autonomous (Founder pinged только R5)
- **Boundaries (critical):**
  - Liza **does NOT contact A023-perimeter directly** (Mama). Mama-contact load stays with relay layer (Tatiana + Elena Ivanovna candidate per T-047).
  - Apartment work routed: Liza → Tatiana / Elena Ivanovna / Sergey Treshchev (Kyiv lawyer per T-048) / DHL / Thai notary
  - NO founder-private substantive write access initially (read OK per Privacy Mode); escalates if Phase 2 graduation + Founder ratify
  - Compensation tier: Individual Contractor sandbox (income < $1.5k/mo per vision-v2 § 3.5 sandbox); LLC required if/when threshold crossed
- **Tooling:** Cursor (Privacy Mode ON) + Discord + Google Workspace (TH-01 alias on existing seat OR new seat per R5 money pre-auth)
- **Notes:** First TH-01 sub-node deployment. Vision-v2 § 4 node/sub-node hierarchy applies (TH-01 = sub-node within Orbios node per current PROPOSED v2; vision-v1 § 4 cluster framing also valid). Onboarding docs will reside in `clusters/th-01/` (Liza-built per Founder direction «она сама развернёт кластер»). Cross-ref T-047 (Elena Ivanovna Communicator), T-048 (Sergey Treshchev Kyiv lawyer DM), T-049 (activity audit Illia/Vianca).
- **2026-06-30 update:** Day 1 email task (Phase 0 § A1) **НЕ выполнено** yesterday. Reliability signal flagged. Primary TH-01-01 slot reassigned to Анжелика per Founder direction 2026-06-30. Liza continues Phase 0 в **non-primary** capacity; complete Phase 0 acceptance criteria → evaluate Phase 1 role assignment based on actual delivery. HR dossier: `log/hr/liza-novikova.md`.

### T-053 — Анжелика (Chekhova) — TH-01-01 primary candidacy + paid trial (Vianca pattern)
- **Owner:** founder (R5 gate) → Анжелика (first ops task on GO)
- **Type:** R5 personnel candidacy + onboarding
- **Status:** open (candidacy logged 2026-06-30 post questionnaire processing)
- **Trigger:** Founder direction 2026-06-30 — primary TH-01-01 slot; replaces Liza primary
- **Candidate:** Chekhova Anzhelika Igorevna, 27, Phuket TH; business/systems analyst background; questionnaire 2026-06-29
- **Acceptance:**
  1. Founder R5 ratify trial start
  2. **First task:** register email `th01.orbios@gmail.com` per `sops/cluster_account_strategy.md` + `sops/add_unit.md` — recovery → `erik.sytnyk@orbios.io` (Founder confirms exact); 2FA on **her phone**; NOT Founder phone
  3. Weekly timesheet `clusters/th-01/timesheets/<YYYY-WNN>.md`
  4. Trial: **$5/hr + $500 ceiling + 4-week cap** (OD-052 Vianca calibration 20/30/35/35)
  5. Phase 0 close per `templates/onboarding/th-01-01-phase-0.md` (reassign A1 owner to Анжелика)
- **Budget envelope:** Charter § 4 trust-tier $50/unit emergency + $500 trial ceiling
- **Notes:** Public profile `context/personnel/th-01-01-candidate-anzhelika.md`; HR dossier `log/hr/anzhelika-chekhova.md`. Trial agreement NOT auto-canonized — Founder R5 ratify required. Cross-ref T-046 (Liza non-primary).

### T-054 — Яна (Baidachnik) — TH-01-02 contractor candidacy + paid trial
- **Owner:** founder (R5 gate) → Яна (on GO)
- **Type:** R5 personnel candidacy
- **Status:** open (candidacy logged 2026-06-30)
- **Trigger:** Founder direction 2026-06-30 — TH-01-02 contractor slot
- **Candidate:** Baidachnik Yana Igorevna, 33, Thailand (**city verify required**); part-time elsewhere; comms/content + AI depth
- **Acceptance:**
  1. **Verify Яна location** — exact TH city + weekly hour availability
  2. Founder R5 ratify contractor trial
  3. Scope: content/comms ops + AI workflow design for TH-01
  4. Trial: $5/hr + $500 ceiling + 4-week cap; **lower initial hour caps** (part-time constraint)
  5. Probe questionnaire «Частично» on decision responsibility — define boundaries in writing
  6. On GO: scaffold TH-01-02 per `sops/add_unit.md`; shared cluster account per `sops/cluster_account_strategy.md`
- **Budget envelope:** same sandbox tier as T-053
- **Notes:** Public profile `context/personnel/th-01-02-candidate-yana.md`; HR dossier `log/hr/yana-baidachnik.md`. Separate R5 from T-053 primary slot.

### T-055 — Standardize Google Forms candidate questionnaire format → PH-01 recruitment canonical template
- **Owner:** Vianca (PH-01-01) — M015 / recruitment scope
- **Type:** template + process
- **Status:** open (deferred trigger: post Liza Phase 0 close)
- **Trigger:** Founder praised questionnaire format 2026-06-29; three candidates processed (Liza, Анжелика, Яна) — reusable for future TH-01 / cluster hires
- **Acceptance:**
  1. Template documented in `templates/recruitment/candidate-questionnaire.md` (form structure + field definitions)
  2. Scoring rubric section stubbed OR deferred to separate Founder session (do NOT engineer rubric without direction)
  3. Cross-link from PH-01 recruitment missions + `sops/add_unit.md` § 1.5 HR dossier intake
- **Notes:** Owner Vianca executes after Liza Phase 0 closes. Source artifacts: `integration/th01_hr/*.jpg` (local). Do not contact candidates from this task — template extraction only.

### T-047 — Elena Ivanovna — UA-02 acting Communicator candidate (R5 RATIFIED 2026-06-29 — proceed)
- **Owner:** founder (R5 gate) → relay only after ratify
- **Type:** R5 personnel candidacy
- **Status:** open (candidate surfaced 2026-06-28; awaiting actual contact event)
- **Trigger:** Mama message 2026-06-28 — Elena Ivanovna agreed to help; knows family через Katya's old company «на Громова»; has Founder + Mama Telegram contacts
- **Acceptance (pending Founder R5):**
  1. Initial contact event materializes (Elena Ivanovna → Mama OR Founder)
  2. Founder R5 ratify gate: accept role OR decline
  3. Scope spec drafted (what Elena handles vs Tatiana keeps): apartment-sale specific topics OR general comms with Mama OR specific event coordination
  4. Boundaries documented: NO founder-private access; NO money decisions; NO Founder-direct contact except periodic check-in
  5. Three-relay structure formalized in UA-02 cluster docs: Tatiana (HR-coordinator + sale execution) + Elena Ivanovna (Communicator) + future TH-01-01 Liza (work-flow coordinator)
- **Notes:** Structural relief value — frees Founder from direct Mama-contact load per Charter § 7 protected time + intake D1.2 ADHD focus protection. Provides redundancy с Tatiana. Cross-ref `modules/founder-private/topics/kyiv-apartment-private.md` § 6.3. **2026-06-29 R5-A ratified: activation PROCEEDS** despite Tatiana's «избыточно» framing (intake 2026-06-29 § 4.1 pressure pattern logged). Per Founder direction: Tatiana's gate-keeping does NOT override Founder R5; Elena Ivanovna joins UA-02 as Communicator per Katya referral path.

### T-048 — Sergey Treshchev (Kyiv lawyer) — Instagram DM
- **Owner:** founder
- **Type:** action
- **Status:** open (carry-forward from thai-notary-poa intake integration 2026-06-25)
- **Trigger:** 15 min Founder action — outbound DM
- **Acceptance:**
  1. Instagram DM sent: «Can your firm do PoA to which stage; minimum stage-1 Thai notary for UA-EN text without extra translation»
  2. Response logged to private playbook
  3. If positive — proceed with engagement; this becomes the licensed Thai notary path gap closure (T23 unlock)
- **Notes:** Was in queue as future Founder execute. Now becomes Liza dispatch task if Liza Phase 1 ramp covers UA-02 coordination scope (sending DM = simple coordination task). Founder may also do directly. Cross-ref `modules/founder-private/topics/kyiv-apartment-private.md` § 3.1 private-only action path.

### T-052 — Kyiv RE lawyer engagement — formal gate (R5-D)
- **Owner:** founder (R5 gate)
- **Type:** R5 personnel + money
- **Status:** open (per intake 2026-06-29 — participant созвонилась с Kyiv RE lawyer; готов сопровождать сделку за плату)
- **Trigger:** Founder R5-D ratify 2026-06-29 = **Formal Gate** before engagement
- **Acceptance:**
  1. Participant shares lawyer **name + контакт + experience**
  2. **Scope spec** drafted: what lawyer does (RE sale escort / contract review / closing supervision / etc.)
  3. **Budget** explicit (fee structure, hourly OR flat, NO hidden commissions per OD-063 «no brokers» — lawyer ≠ broker)
  4. Founder R5 ratify gate: engage OR decline
  5. If engage: written agreement + payment terms documented
- **Notes:** Per Founder R5 ratify 2026-06-29 (R5-D): formal gate stance. NOT engage blind per participant assertion. Validates that lawyer = legitimate paid escort (not commission broker which would violate OD-063). Cross-check с Sergey Treshchev (T-048 — Phuket-side Kyiv lawyer) — может быть same person OR different option; compare. Budget should fit within existing ~$2k operational allowance framing per private playbook § 7.

### T-051 — Cursor models availability context — periodic maintenance
- **Owner:** TH-01-01 (Liza) once Phase 1 + Founder (initial seed)
- **Type:** infrastructure / context maintenance
- **Status:** open (newly opened 2026-06-29 per Founder direction «может тебе нужно добавить контекст из того что доступно в курсор позже»)
- **Trigger:** Architect drift on model names (referenced «Gemini 2.0 Flash» when actual = «Gemini 3.5 Flash»); model availability changes periodically; Architect/Lana/Mira recommendations need current accurate model list
- **Acceptance:**
  1. Create `context/tooling/cursor-models-available.md` (NEW file) — current Cursor models list + capabilities + jurisdiction (Privacy Mode / ZDR status)
  2. Cross-link from `.cursorrules` Router (model recommendations per persona) + `templates/intake-activation-prompt.md` § Source profile + tone (model recommendations per profile)
  3. **Maintenance cadence**: Liza/TH-01-01 checks Cursor model selector weekly (Phase 2+), updates file if changed
  4. Foudner refresh on major Cursor releases / model deprecations
- **Notes:** Prevents Architect/Mira/Lana from referencing stale model names. Files currently mention old model versions (Gemini 2.0 vs current 3.5). Source-of-truth file lets specs reference canonical list, not paraphrase from memory. Aligns с `feedback_sop_authority_precedence` (cite source, не paraphrase). Cross-ref: `templates/intake-activation-prompt.md` § Source profile + tone; `templates/intake/savelova-apartment-status.md` § Model selection guidance; `agent/personas/*.md` model recommendations per persona.

### T-050 — Architect + Lana persona updates — SOP authority precedence + pre-flight coherence check
- **Owner:** architect (drafts PROPOSED) → founder (ratify gate per OD-062)
- **Type:** canon-class persona update
- **Status:** open (deferred — Founder direction 2026-06-29 «оставь в очереди на потом»)
- **Trigger:** 2 spec drift events 2026-06-29 reached Founder as verification layer (Architect Workspace-vs-Gmail drift + Lana addressed-Founder-vs-Liza drift); pattern documented in memory `feedback_sop_authority_precedence`
- **Acceptance:**
  1. `agent/personas/architect.md` — add «Citation discipline» section: every operational claim cites source SOP path; no paraphrasing from memory; flag «not SOP-checked» explicitly if SOP unread
  2. `agent/personas/lana.md` — add «Pre-flight SOP coherence check» section: at session start with any spec, silent read all referenced SOPs, validate claims, flag drift to Architect (NOT Founder)
  3. `agent/personas/composer.md` — add similar pre-flight: refuse to execute spec with un-cited operational claims; bounce back to Architect
  4. PROPOSED status → Founder explicit ratify per OD-062 → ACTIVE
  5. Cross-ref to memory feedback as authoritative source
- **Notes:** Per Charter § 7 + vision-v2 § 5.5 P2 — Founder must not be primary error verification layer. Pattern recognition: if drift errors repeat after this lands, escalate to OD-class entry in manifest. Defer not because unimportant — because canon-class deserves dedicated ratify session, not «между делом» during ops execution.

### T-049 — Activity audit Illia/Vianca (Phase 2 deliverable for TH-01-01 / Liza)
- **Owner:** TH-01-01 (Liza) once Phase 2 trigger fires
- **Type:** audit + reporting
- **Status:** blocked on T-046 Phase 2 trigger
- **Trigger:** Liza Phase 2 entry (≥2 weeks operational + Phase 1 missions accepted)
- **Acceptance:**
  1. Activity report Illia (UA-01-01 interim Speaker PH-01): mission completions per week last 4 weeks, time logged, expense lines flagged for Founder review
  2. Activity report Vianca (PH-01-01): same scope
  3. Gaps identified explicitly (no Founder direct contact periods, missing status updates, expense items without mission link)
  4. Founder R5 gate at end: continue / re-evaluate / restructure per unit
- **Notes:** Per intake D3 Founder direction — «результаты под вопросом», «расходы шли, Illia давно не писал Founder». NOT pre-emptive personnel decision; audit-first → data-grounded R5 gate. Activity audit ≠ financial audit (financial reconciliation = orbios-finance-kb scope per OD-043). Liza role = surface activity data + structure presentation for Founder review.

### T-045 — LinkedIn delegation surface — isolated Windows account + remote session
- **Owner:** founder (setup) → Vianca (operator)
- **Type:** infrastructure + delegation
- **Status:** open (newly opened 2026-06-26 per R5 ratify Pattern B+)
- **Trigger:** Founder direction 2026-06-26 — Vianca получает LinkedIn ops via remote session на dedicated isolated surface (NOT password share)
- **Acceptance:**
  1. **Separate Windows account** created (suggested name: `orbios-ops`); no admin rights; no Founder personal files accessible from this user
  2. **Dedicated browser profile** (Chrome OR Edge) on `orbios-ops` user; sign into LinkedIn ONCE under Erik identity; complete 2FA
  3. **Remote tool installed** on `orbios-ops` user (Architect rec: **Chrome Remote Desktop** OR **AnyDesk** — both free for this use case)
  4. **Remote credentials shared** to Vianca via 1Password share OR Signal (NOT Discord public / NOT git)
  5. **SOP drafted** by Architect/Lana: scope (triage / draft / send operational outreach), boundaries (escalate pricing / close / personal / weird threads → Founder), schedule (e.g., 2×30min/week batched sessions), session log (Vianca commits summary to repo at end of session)
  6. **First test session** scheduled + completed; Vianca processes 1-2 messages with Founder observing (warm-up) before independent operation
  7. **Revoke plan documented**: if needed → change LinkedIn password OR disable Windows account OR revoke remote tool access → 1-line action
- **Notes:** Reasoning: LinkedIn ToS prohibits credential sharing; raw password share = account suspension risk (IP mismatch PH vs TH). Isolated Windows account = real OS-level separation (no Founder browsing history / files / sessions leak). Same approach extensible to email, Twitter, other identity-bound platforms later. Reassignment plan: when TH-01 assistant onboards, transfer remote access to TH-01; Vianca revoked cleanly.

### T-044 — Thai partner search (Track A primary objective — Founder OS-tracked)
- **Owner:** founder
- **Type:** ongoing objective (multi-session)
- **Status:** open (newly formalized 2026-06-26)
- **Trigger:** Founder direction 2026-06-26 — formalize long-stated personal objective in Founder OS as P0 (per priority pivot snapshot)
- **Acceptance:**
  1. Methodology defined (intentional dating discipline / social activities / cohort patterns) — Architect/Mira can prep brief if Founder requests
  2. Cadence / weekly touchpoints logged (track A vitality digest line item)
  3. Operational details (interactions, names, situations) → `modules/founder-private/relationships/` Tier E only
  4. Public canon = scope acknowledgment only; no surface-level details
- **Notes:** Target framing «тайка locally» (Thai partner, in-location, Phuket-adjacent per Founder direction). Personal scope. Charter Phase 1 era — Vector tracks as ongoing FOUNDER track signal in daily digests; no autopilot execution. Cross-ref `state-of-orbios/2026-06-26-priority-pivot.md` § 2 + § 3 partner sub-track scope.

---

(добавляй items сюда сам или говори Architect'у при сессии — он закинет)

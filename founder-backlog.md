# Founder Backlog

**Purpose:** persistent storage для Founder items которые легко потерять между сессиями.
Architect grep'ит файл при старте каждой сессии и поднимает actionable items.

**Format:** per `sops/task_management.md` — `T-NNN` global counter, Founder surface.

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
- **Status:** open
- **Trigger:** now (architectural homework before CAMP construction unblocks)
- **Acceptance:**
  1. Architect drafts option matrix for Nana exit from CAMP ownership: buy-out at 25k THB (current canon), share transfer to Anna (50/97 or full), transfer to future Thai partner (T-014), dilution via new shareholder structure, sale to deal-structurer / outside investor, legal forced-exit mechanisms (Thai law), wait + leverage non-cash levers
  2. Each option: cost / time / risk / dependency / Founder-effort profile
  3. Founder reviews + picks path (or hybrid)
  4. Picked path → M006 Task 1 updated + Thai lawyer engaged
- **Notes:** Founder direction 2026-06-02 (Nova packet (f)) — «ОС должна предлагать альтернативы если возможно, сейчас вопрос как убрать токсичного паразита Нану из наших кэмп партнеров перед началом строительства, Анна заинтересована в работе». Anna = ONE option, not predetermined. Thanan = contractor not partner (different class). Architect homework: draft option matrix in next session.

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
- **Notes:** Container Tree v1 ACTIVE. Parallel to T-023 / M001-T17 (Kyiv) — not blocking. **~15 min/box**; stop when tired (Track A).

### T-023 — Kyiv apartment inventory — Founder prep pack
- **Owner:** founder + Lana (brief) → Illia relay (field)
- **Type:** action
- **Status:** open
- **Trigger:** before M001-T17 visit closes — prep can run in parallel with T-020
- **Acceptance:**
  1. `clusters/ua-02/inventory/locations/LOC-UA-KYIV-APT.location.md` checklist complete
  2. Field brief sent to Illia for participant visit (`sops/physical_inventory.md` §5): label scheme `CN-UA-*`, doc container `CN-UA-DOC-001`, photo + written опись
  3. After visit: Illia/agent-log confirms containers landed under `clusters/ua-02/inventory/containers/` + `documents.md` row closed
- **Notes:** Founder does **not** run on-site visit — prep + gates only. Unblocks title-deed certainty (M001-T17/T18). Same Container Tree schema as T-020.

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
- **Notes:** Not warm-intro pool (T-019). Separate TH-01 track. Yoan window until ~July 2026.

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

---

(добавляй items сюда сам или говори Architect'у при сессии — он закинет)

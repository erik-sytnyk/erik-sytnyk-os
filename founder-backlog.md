# Founder Backlog

**Purpose:** persistent storage для Founder items которые легко потерять между сессиями.
Architect grep'ит файл при старте каждой сессии и поднимает actionable items.

**Format:** per `sops/task_management.md` — `T-NNN` global counter, Founder surface.

## SESSION FOCUS (2026-07-19 refresh)

| | |
|---|---|
| **Strategy** | **T-078** — Founders 100+ Track (Phase A эталон → B child-nodes → C 100+) |
| **Active (ops surface)** | **T-061 / T-077** — Cursor+Discord; 1–2 Linux ops-calls/day |
| **Active (people)** | **T-054** Яна ops (+ Mini-Founder fork later) · **T-079** Founder-focus slot (fix Lika / +1) |
| **Active (revenue)** | **T-076** Patrik ∥ market extension |
| **Background** | T-031 files, T-005 Pop!_OS (disk delegated), T-075 apartment cushion, rest of open T-NNN |

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

### T-005 — Pop!_OS dual-system на 2-м диске + remote/coding (до ДР)
- **Owner:** founder (install day + R5 spec only) → **TH-01 ops (Lika/Yana)** — закупка диска + логистика
- **Type:** action / infra personal
- **Status:** open
- **Priority:** **P0 personal / «подарок себе к ДР»** — Founder override 2026-07-18 01:16: выше Camp-build uncertainty; environment setup energy → Linux
- **Trigger:** ops заказывает 2-й диск по спеке → Founder install window (не Founder shopping)
- **Acceptance:**
  1. **Hardware (DELEGATED):** ~1TB disk ordered + delivered/installed physically as needed — **не Founder owner-action**; ops получает спеку (interface/size/budget gate) и закрывает закупку
  2. **Pop!_OS** стоит второй системой, boot menu ок, Windows не сломан — Founder install day
  3. Базовый **coding** stack (git, editor/Cursor path or VSCodium, SSH keys) работает
  4. **Remote sessions** настроены достаточно для своего use-case
  5. **Hard time-box install day: 4 часа.** Yak-shaving >4h → abandon polish, leave «boots + code»
- **Notes:**
  - **2026-07-18 01:18 Founder correction:** «почему я заказать диск — делегировать; я сажусь за DEV, всё остальное делегируется». Mira catch: не предлагать Founder routine procurement.
  - **2026-07-18 01:16:** приоритет до ДР как working gift; информационная гигиена.
  - Founder surface = install + coding setup only. Shopping/доставка = TH-01.
  - Cross-ref: T-034 laptop, T-045 Win remote LinkedIn, T-063 ДР prep, T-061/T-067 ops capacity.

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
  - **Update 2026-07-17 (TH-01 archive dump):** Camp business with Nana treated closed; Anna residual contact. Car: Founder paid **~27k THB** already; **keys still missing**; car parked. Founder was not aware Nana pawned car dynamics at the time; unsure if she needed higher sum. Anna offered service unlock + duplicate keys (2026-07-16). Prefer car over bike for camp trips — not urgent, chronic mental drain → see **T-066**.

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
  - **2026-07-19:** Optimize CTR pull order under **Founders 100+ Strategy** — Phase A эталон first (`context/local/2026-07-19-founders-100-strategy.md`); park mass founder-hire until эталон green. Cross-ref T-078.

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
  - **2026-07-18 unload:** Founder wants OS **file support** pushed (this T) **+ passwords if possible** → pair T-010; not a Sat DEV-day blocker — design track.

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
- **Priority:** **P0 personal** — needed anyway; blocks clean ДР travel (T-063)
- **Trigger:** soon / before road prep solidifies; Phuket Town service-center window
- **Acceptance:**
  1. Laptop delivered to warranty authorized service in Phuket Town
  2. Ticket / RMA number + expected return date logged (founder-private note or here)
  3. Machine usable for travel window (or interim workaround documented)
- **Notes:** Warranty path — not ad-hoc repair shop unless warranty rejects. **2026-07-17 unload:** Founder — «нужно фиксить ноут, мне он нужен в любом случае» (even if trip stays short/local).

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

### T-046 — TH-01 (Liza) onboarding — PAUSED 2026-06-30 (candidacy suspended per Founder direction)
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

**PAUSED 2026-06-30 (Founder direction)**: Liza не отвечала на Founder messages 2026-06-29, missed agreed Thursday start, absent from onboarding 2026-06-30 when Анжелика + Яна started. Communication silence = red flag Founder не игнорирует. TH-01 slot reassigned (Анжелика primary + Яна active + T-060 Kazakhstan backup activated). Реактивация только на Founder explicit direction. HR dossier updated `modules/founder-private/log/hr/liza-novikova.md`.
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
- **Status:** open (candidacy logged 2026-06-30; **strategy refresh 2026-07-19**)
- **Trigger:** Founder direction 2026-06-30 — TH-01-02 contractor slot
- **Candidate:** Baidachnik Yana Igorevna, 33, Thailand (**city verify required**); part-time elsewhere; comms/content + AI depth
- **Acceptance:**
  1. **Verify Яна location** — exact TH city + weekly hour availability
  2. Founder R5 ratify contractor trial
  3. Scope **now:** взять **операционку** TH-01 (content/comms + AI workflows + external touches relay per T-061) — сильный ops
  4. Trial: $5/hr + $500 ceiling + 4-week cap; **lower initial hour caps** (part-time constraint); path to **хорошая ЗП** если остаётся в команде
  5. Probe questionnaire «Частично» on decision responsibility — define boundaries in writing; watch **ownership 4–8 weeks**
  6. On GO: scaffold TH-01-02 per `sops/add_unit.md`; shared cluster account per `sops/cluster_account_strategy.md`
  7. **Fork (not now):** (A) stay Orbios Principal/ops with strong comp · (B) **Mini-Founder / отдельная нода** (AI DEV agency clone) — Founder sees potential; **RF passport OK** if residence outside RF (`hiring-criteria.md`)
- **Budget envelope:** same sandbox tier as T-053
- **Notes:**
  - Public profile `context/personnel/th-01-02-candidate-yana.md`; HR `modules/founder-private/log/hr/yana-baidachnik.md`. Separate R5 from T-053 primary slot.
  - **2026-07-19:** Founder — Яна сильный ops; может стартовать отдельную ноду; не путать с Founder-focus personal slot (T-079). Strategy: `context/proposals/founders-100-track-v1.md` + T-078.

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

### T-060 — Kazakhstan candidate backup for Liza slot (TH-01)
- **Owner:** founder (initial contact) → Vianca (Phase 1+ recruitment coord если пойдёт)
- **Type:** REVENUE / staffing backup
- **Status:** open (backup activated 2026-06-30 pending Liza status decision)
- **Trigger:** Liza slot vacates OR Liza Phase 0 fails
- **Acceptance:**
  1. Verify Kazakhstan candidate current status (still available? still interested?)
  2. If ready → 4-week trial framework same as T-053/T-054 ($5/hr + $500 ceiling)
  3. Scope: TH-01 role — likely Liza's original scope OR reassigned based on Founder decision
  4. Passport policy per `context/personnel/hiring-criteria.md` — Kazakh passport OK; verify residence outside RF
- **Notes:** Per Founder direction 2026-06-30 Illia DM — «Есть 4й кандидат из Казахстана, она запасная если с Лизой не пойдет. У Лизы конечно украинский паспорт был бы хорошим бонусом». Liza's UA passport was leverage для UA-related work; Kazakhstan candidate would need different scope allocation OR Yana/Anzhelika absorb Liza's UA coordination (routed через них до найма UA-passport replacement).

### T-058 — Call friend for AI outstaff agency referral details
- **Owner:** founder
- **Type:** REVENUE pipeline action
- **Status:** open (surfaced 2026-06-30)
- **Trigger:** now (Founder call slot)
- **Acceptance:**
  1. Call friend → get agency name + contact + Founder's role в referral
  2. Direct call с agency contact → get engagement model + contract structure + volume
  3. Log outcome в `log/vector/pipeline/friend-referral-ai-outstaff.md`
  4. Decision: pursue OR decline based on fit + capacity
- **Notes:** Rate range £30-60/hr signals outstaff/subcontractor model. Complementary к Patrik pipeline (agency-intermediated vs direct sub-partnership). Both в REVENUE track. Founder dev capacity constraint (single dev near-term) means screening priority = fit + volume alignment.

### T-059 — Dev internship batch planning (post-stabilization)
- **Owner:** founder (planning) → future TH-01-XX (execution)
- **Type:** future hiring pattern
- **Status:** open (deferred trigger)
- **Trigger:** когда company revenue stabilizes (first Fractional CTO close + Patrik pipeline OR outstaff volume steady)
- **Acceptance:**
  1. Same 3-candidate parallel trial pattern (per T-053/T-054/T-055 template) applied к dev roles
  2. Budget envelope planning (per Charter § 4 — likely $500 × 3 = $1500 initial + ramp)
  3. Reuse standardized candidate questionnaire (per T-055) adapted к dev skills
  4. Recruitment channel: Vianca M009 pattern OR direct network referrals
- **Notes:** Per Founder direction 2026-06-30 — «по программистам я на ближайшее время единственный программист, когда компания в таком формате стабилизируется я мог бы организовать еще одну стажировку для девелоперов». Complements current non-dev candidate trio (Liza + Anzhelika + Yana). Timing deferred until revenue signal clear.

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

### T-061 — External-world comms via TH-01 ops (work-mode by ДР)
- **Owner:** founder (gate) → TH-01 ops (Yana lead + +1 capacity)
- **Type:** work-mode / ops protocol
- **Status:** open
- **Priority:** high — **deadline 2026-08-04** (ДР Founder); test mode **желательно раньше** (до 4-го)
- **Trigger:** +1 TH-01 onboarded enough for relay capacity; Founder request «через ops»
- **Acceptance:**
  1. **Working mode:** все **внешние касания** идут через TH-01 ops (не Founder direct default)
  2. **+1 TH-01** закрыт как capacity для этого режима (без +1 режим не устойчив)
  3. **Test mode** включён до 2026-08-04 (хотя бы частичный контур: выбранные каналы / типы запросов)
  4. К **2026-08-04** режим подключён на уровне рабочего режима (не «идея», а практика)
  5. Протокол: кто принимает, кто драфтит, когда эскалация к Founder, что остаётся Founder-only
  6. **Founder work interfaces = только Cursor + Discord** — максимально удобно, **без доп. инструментов** (не Linear/Notion/mail clients as daily surface). Внешний мир → TH-01 → Discord digest / Cursor OS; Founder отвечает в этих двух.
- **Notes:**
  - Captured Mira unload 2026-07-17 ~21:23 +07 — внешние коммуникации через TH-01 ops; +1; до ДР; test раньше.
  - **2026-07-18 01:24 sharpen:** «ведение всех внешних касаний через TH-01»; рабочие интерфейсы Founder = **Cursor + Discord only**; convenience without extra tools. August plan strokes enough (Patrik∥market) — this is next architecture stroke.
  - Cross-ref: T-021, T-045 (LinkedIn remote stays ops-side), T-027, T-067, T-076, vision Monday draft.
  - Scope: personal Track A channels may stay opaque/exception list — external *work* touches default via TH-01.

### T-062 — Personal finance clarity + delegate to TH-01 ops
- **Owner:** founder (R5 gates / spend decisions) → TH-01 ops (tracking, rollups, nudges) · ledger detail → `orbios-finance-kb` (OD-043)
- **Type:** personal/finance + ops delegation
- **Status:** open
- **Priority:** high (personal stress / «пофиксить финансы») — soft target align with T-061 window where capacity allows; **no hard ДР deadline stated**
- **Trigger:** now — Founder needs spend clarity before heavier personal burn; TH-01 +1 capacity (same as T-061)
- **Acceptance:**
  1. **Clarity now:** Founder understands what he can count on at current spend rate (runway / burn vs reserve — simple picture, not full accounting thesis)
  2. **Snapshot capture (Tier E / finance-kb):** current personal reserve band noted at unload (~USD 8–10k as of 2026-07-17 — verify live balances before acting); company framed as exiting crisis (qualitative — not a finance-kb fact until booked)
  3. **Ongoing:** personal spend tracking + «на что рассчитываю» digest — operable without Founder holding the spreadsheet in head (ties T-002 monthly tracking)
  4. **Delegation:** personal finance ops (tracking, reminders, category hygiene, surface digests) → **TH-01 ops**; Founder keeps R5 on transfers / large spend / Owner's Distribution gates
  5. Boundaries written: what TH-01 may see / touch vs what stays Founder-only / finance-kb / Broker-1 perimeter
- **Notes:**
  - Captured Mira unload 2026-07-17 ~21:26 +07 — Founder: пофиксить финансы; понимать на что рассчитывать при тратах; запас ~8–10k; компания из кризиса вроде выходит; хочу личные финансы тоже делегировать на TH-01 ops.
  - Cross-ref: T-002 (monthly expense tracking), T-003 (Owner's Distribution), T-008 (finance migration scratch), T-011 (UBI raise target), T-029/T-030 (bank rails), T-038 (personal subscriptions audit), T-061 (external comms via TH-01 — same +1 capacity dependency).
  - Privacy: amounts stay Tier E / finance-kb — never public `orbios-os` body. TH-01 access = need-to-know + Privacy Mode discipline.
  - Does **not** replace company bookkeeping (Vianca / finance-kb) — this is Founder-personal clarity + ops relay.
  - **2026-07-17 add:** July personal fin-gap already (Founder paid Nana from personal) → any new personal allocation (clothes T-064, trip T-063) must be explicit extra line, not «из головы».

### T-063 — ДР trip plan (2026-08-04) — light option, full road prep
- **Owner:** founder (destination + budget gate) → TH-01 ops / Lika (calendar + logistics assist when delegated)
- **Type:** personal / Track A
- **Status:** open
- **Priority:** high — **deadline 2026-08-04**; decision window **now → ~late July**
- **Trigger:** unload 2026-07-17 — Founder wants to plan ДР; Bali not viable
- **Acceptance:**
  1. **Bali trip — dropped** (Founder: «Бали трип я не тяну») — do not keep as active option
  2. Destination chosen among lighter options (prior signal: Chiang Mai ≤1 week; Bangkok combine-on-demand; Phuket deprioritized for ДР vibe) — Founder R5
  3. **Full road prep** checklist closed: dates, stay, transport, packing, work-mode while away (T-061 test if possible)
  4. Budget line for trip explicit vs reserve (ties T-062) — no silent burn
  5. Laptop path resolved or workaround (T-034) before departure
- **Notes:**
  - Captured Mira unload 2026-07-17 ~21:31 +07.
  - Days to ДР from capture: **~18**. Prefer destination lock with buffer for booking.
  - Cross-ref: dump `dumps/2026-07-17-camp-partner-household-eod.md` (ДР track opaque), T-034 laptop, T-062 finance clarity, T-064 clothes, T-044 Track A partner (optional overlap only — not required for trip).
  - **Conflict resolve:** Discord ~18:xx same day still listed Bali as option; later Mira unload = Bali dropped. **Authoritative = Bali out**; CM light option stands.

### T-064 — New clothes + explicit personal allocation (July gap aware)
- **Owner:** founder (amount gate) → TH-01 ops (remind / track once delegated)
- **Type:** personal / spend
- **Status:** open
- **Priority:** medium-high — before ДР road (T-063); money must be **allocated**, not hoped
- **Trigger:** Founder wants new clothes; July already in personal fin-gap after Nana payouts from own funds
- **Acceptance:**
  1. Explicit **extra personal allocation** set aside for clothes (amount Founder gates — not inferred)
  2. Purchase done or deferred consciously (not open mental loop)
  3. Logged against T-062 picture so spend doesn't surprise runway
- **Notes:**
  - Captured Mira unload 2026-07-17 ~21:31 +07 — «хотел новую одежду купить (надо себе денег выделить дополнительно, а то в этом месяце фин разрыв уже, потому что я Нане со своих выплачивал)».
  - Nana personal payouts = context for gap only; company vs personal classification → finance-kb when booked. Opaque in public.
  - Cross-ref: T-062, T-015 (Nana track), T-063 road prep.

### T-065 — Tuhta household ops → Founder Track (next week, no Founder manage)
- **Owner:** Lika (comms/ops) + founder (phone handoff + R5) · later OS agent relay
- **Type:** household / Founder Track
- **Status:** open
- **Priority:** high — **next week** (Founder: «большой запрос пофиксить… у меня нет времени её менеджить»)
- **Trigger:** 2026-07-17 TH-01 dump + Mira unload confirm
- **Acceptance:**
  1. Spare phone with Discord given to Tuhta; shown which channel
  2. Founder Track: **separate channel** RU primary + EN translation; Lika↔Tuhta (start direct, later agent: OS→agent→Tuhta chat)
  3. Work pattern optimized: 7/11 selected options / delivery easier; breakfast; clean (keep — real plus); ants **not** her scope → T-033
  4. Ideal split explored: **3 days alt work + 3 days as now** (Founder preference); practice local + AI-agent results
  5. Perimeter: stop / contain info leak Tuhta→Nana on Founder status (channel design + instruction)
  6. Founder **not** day-managing Tuhta
- **Notes:** No personal relationship with Tuhta (contrast Nana). Clean house = major plus post Orbios 1/2 collapses. Cross-ref dump `dumps/2026-07-17-camp-partner-household-eod.md` § Household.

### T-066 — Camp car keys / unlock (post-Nana exit residual)
- **Owner:** founder (gate) → Anna (local execution advice)
- **Type:** action
- **Status:** open
- **Priority:** medium — not urgent; chronic drain
- **Trigger:** paid ~27k; keys never received; car sits; want car for camp not bike
- **Acceptance:**
  1. Path chosen: Anna service unlock + duplicate keys **or** other
  2. Keys in Founder hand; car usable for camp trips
  3. Money/keys story closed enough to leave mental load (ties T-015 exit residual)
- **Notes:** 2026-07-17 dump. Opaque in public. Cross-ref T-015.

### T-067 — Hire / unload gate: capacity before dump + stability before scale
- **Owner:** founder (R5) · TH-01 ops aware
- **Type:** operating principle
- **Status:** open (standing rule)
- **Priority:** high — frames +1 TH-01 / +1 PH-01 and task unload
- **Trigger:** 2026-07-17 TH-01 evening + Yana thread
- **Acceptance:**
  1. **Do not** unload all Founder tasks into OS if no ops capacity to execute
  2. Growth not at expense of quality; DEV grows on demand (orders), not max headcount
  3. **+1 TH-01 + +1 PH-01** before further scale; after that grow via processes + AI
  4. Soft gate: after **Patrik first payment** — think +1 ops TH-01; if Lika focus = dev-assist + camp → delegate some Founder Track
  5. Company priority = **stability / buffer** before scale attempts (two logged fails: camp launch + dev agency → each followed by depressive episode — Tier E context only)
  6. Context unload to TH-01 **as-is** OK; agents later normalize + access tiers (Orbios 2.0 anti-pattern: too much info to all staff)
- **Notes:** Complements T-061/T-062 (+1 capacity). Vision Monday draft. Flexible cluster/project ACL modules = later Architect work — not this T.

### T-068 — Steinar (UA-02 / pref junior) — decide path after 2026-07-18 call
- **Owner:** founder (R5) → Illia (hours/scope day-to-day) · Lana (onboarding packets)
- **Type:** personnel / experiment
- **Status:** open
- **Priority:** medium — call **2026-07-18 12:50 +07**; decision after signal, not mid-night spiral
- **Trigger:** Founder unload 2026-07-17 «не знаю что со стажером делать»
- **Acceptance:**
  1. Post-call: pick path — **(A)** time-boxed pref tester under Illia hours · **(B)** clear trial DoD then continue · **(C)** pause/exit · **(D)** keep as community-cluster quality experiment only (no expand scope)
  2. Hours/reporting owned by **Illia** (Founder stated); Steinar knows Illia role without family/perimeter digressions
  3. Scope lock: pref = pilot/training; **no** betting/ads/Thai-law productizing without Founder R5; site updates ≠ Steinar default
  4. Timesheet / «насчитал не пойми сколько часов» + P'yatikhatki / Savelova-cluster curiosity → Illia hygiene check
  5. Lesson for next juniors: prefer **Yoan GO** bar; this seat = data point on community-cluster quality
- **Notes:** Dump `dumps/2026-07-17-steinar-pref-junior.md`. Shipping signal exists (scoring beat, PR merged, playtest). Org literacy weak. Cross-ref T-059, T-067, Artem pref P0.

### T-069 — TH-01 self-improved surveys + shared bottleneck ownership
- **Owner:** TH-01 ops (Yana lead + Lika + Vianca as fits) · founder answers questions · OS/Lana may scaffold forms
- **Type:** work-mode / ops culture
- **Status:** open
- **Priority:** high — aligns vision «легко устранимые горлышки» + T-067 collective capacity
- **Trigger:** Mira unload 2026-07-17 ~23:52 — Founder ready to answer; refuses sole performance ownership
- **Acceptance:**
  1. TH-01 runs **self-improved surveys** among themselves (what blocks us / what we need) on a cadence (weekly sprint-friendly)
  2. Same loop surfaces **questions to Founder** (he answers; does not invent the whole performance plan alone)
  3. Bottleneck removal = **shared** (ops + OS + Founder answers) — not Founder as single accountable for team performance
  4. Lightweight artifact: survey → top bottlenecks → owners → done/next (no Founder-managed spreadsheet forever)
  5. Monday vision discuss with TH-01 can introduce this as operating norm (cross-ref local vision draft)
- **Notes:** Founder: «готов отвечать на вопросы, но не хочу нести ответственность за наш перформанс единолично». Ties T-061 (comms via ops), T-067 (capacity before unload), vision draft § bottlenecks. Not a blame ritual — joint hygiene.

### T-070 — Sat 2026-07-18: DEV + pool + ultra → archive intake into OS
- **Owner:** founder
- **Type:** day plan / Track A + DEV
- **Status:** open
- **Priority:** **tomorrow P0** (after sleep)
- **Trigger:** unload 2026-07-18 00:00 — calmer after perimeter handoff; wants ultra + heavy archive load into OS
- **Acceptance:**
  1. DEV day + бассейн done without opening full ops spiral
  2. Ultra block used; archive data pushed into OS (as-is OK per T-067)
  3. Soft stop if FVE dips — archive continues next sessions
- **Notes:** Messenger-off friendly. Not a commit list — energy container.

### T-071 — Discord order: Camp (+translator from start) vs Founder Track first
- **Owner:** founder (pick order) → Illia/TH-01 (build)
- **Type:** infra / camp
- **Status:** open
- **Priority:** next week (Camp Discord was Mon agenda)
- **Trigger:** unload 2026-07-18 — translator must be on from Camp start **or** Founder Track as first working server
- **Acceptance:**
  1. Founder R5: **Camp-first with translator bot EN/RU/TH from day 1** OR **Founder Track first** as template then clone to Camp
  2. Chosen server stands up; translator live at start (no «добавим потом»)
  3. Cross-ref T-004 (Phase 3 import bot — related but not same as translator)
- **Notes:** Dump camp Discord intent 2026-07-17. Prefer one decision, not both half-done.

### T-072 — Patrik research — basic start
- **Owner:** founder (DEV window) · Yana skeleton when Mon path
- **Type:** revenue / research
- **Status:** open
- **Priority:** high — first commercial order path; soft start Sat if energy else Mon
- **Trigger:** unload 2026-07-18 «ресерч Патрика базово начать»
- **Acceptance:** Basic research packet started (not full 8-pt yet); enough to not carry as open mental loop
- **Notes:** Vector daily: 8-pt → Tue 2026-07-21. Don't let research eat whole DEV day.

### T-073 — Personal draw $500 to patch July fin-gap
- **Owner:** founder (R5 transfer)
- **Type:** personal/finance
- **Status:** open
- **Priority:** high — patch gap (Nana personal payouts context)
- **Trigger:** unload 2026-07-18
- **Acceptance:** $500 moved to personal usable balance; logged against T-062 picture; finance-kb if required later
- **Notes:** Tier E amounts. Distinct from T-003 Owner's Distribution $1500 canon instance — this is gap patch. Cross-ref T-062, T-064.

### T-074 — Personal bike broken / using Yoan's — resolve
- **Owner:** founder
- **Type:** personal / mobility
- **Status:** open
- **Priority:** medium — chronic friction; camp prefer car (T-066) separate
- **Trigger:** unload 2026-07-18 — «проблема с личным байком, езжу на байке Йоана»
- **Acceptance:** Path chosen: repair own / replace / keep borrow with clear return · dependency on Yoan not silent forever
- **Notes:** Opaque. Don't conflate with camp car keys T-066.

### T-075 — Kyiv apartment sale = next-week focus (company cushion)
- **Owner:** founder (R5/strategy) → Illia/UA-02 Speaker path (ops) · Broker-1 perimeter rules hold
- **Type:** runway / UA-02
- **Status:** open
- **Priority:** **high next week** — Founder: cushion for Orbios before potential 2026–27 stress; believes in current Orbios
- **Trigger:** unload 2026-07-18 00:00
- **Acceptance:**
  1. Next-week attention on apartment sale progress via **OS→Illia→UA-02** (not Founder-Broker direct spiral)
  2. Framed as **company safety cushion / buffer**, not only personal drama
  3. Bangkok-trip claim from Broker-1 = verify only (dump 2026-07-17)
  4. Does not re-capture 100% Founder bandwidth (anti-pattern: apartment-only mode)
- **Notes:** Complements T-023 inventory, T-067 stability. Mira: coherent with buffer-before-scale; keep ops delegated.

### T-076 — August dual-track: Patrik ∥ market extension
- **Owner:** founder (R5 / DEV on Patrik) · TH-01/PH-01 (market extension execution)
- **Type:** operating plan / revenue
- **Status:** open (PROPOSED — local august draft sharpened 2026-07-18)
- **Priority:** high — August frame
- **Trigger:** Mira unload 2026-07-18 01:21 — Founder: работать с Патриком **параллельно** запускать market extension
- **Acceptance:**
  1. Patrik delivery runs without freezing market
  2. Market extension live: тёплые касания + демо из **двух сайтов** + перебор поля общения + актуализация «кому Orbios интересен»
  3. Owners split (who runs touches vs who runs Patrik ops) — not Founder day-managing both
  4. Draft `context/local/august-2026-plan-draft.md` reflects parallel frame (done 01:21)
- **Notes:** Not ratify-canon yet. Cross-ref T-067, T-072, vision Monday, T-075 apartment cushion.

### T-077 — Ops browser surface: 1–2 Linux calls/day (LinkedIn, Mercury, market ops)
- **Owner:** TH-01/PH-01 ops (execute) · founder (optional on-call / R5 only) · Vianca script (ops-session) per Fri framing
- **Type:** work-mode / infra+cadence
- **Status:** open
- **Priority:** high — unlocks «Founder = Cursor+Discord only» (T-061 §6)
- **Trigger:** Mira EOD 2026-07-18 01:31 — Founder: 1–2 кола/день на Linux утро+вечер; за колы автоматизировать LinkedIn, Mercury, прочий browser ops/market
- **Acceptance:**
  1. Cadence: **1–2 ops-сессии/день**, target **утро + вечер**, слот **~15 мин** (не 30+) — Founder в браузере рабочие вопросы **не** решает между сессиями
  2. Surface: **Linux** (Pop!_OS / T-005) или interim `orbios-ops` remote — browser ops живут там, не на Founder daily desktop
  3. Session bundle: LinkedIn (T-045 / `sops/linkedin-delegation-vianca.md`) + Mercury queue prep/approve nudges + market/ops browser chores — по чеклисту, не ad-hoc
  4. **Logging:** каждая сессия → session log в OS (cluster timesheet / agent-log) + короткий digest в Discord; outbound copy per `sops/founder_outbound_comms.md` (`— Erik via Orbios OS`); личные/company аккаунты — tagged в логе (whose identity)
  5. Founder path: Discord digest + Cursor OS only; R5 на money/price/weird; иначе ops закрывает
- **Notes:** Extends Fri 2026-07-17 ops-session focus. Cross-ref T-061, T-005, T-045, T-021, T-076 market extension.

### T-078 — Founders 100+ Track as Strategy (Phase A→B→C)
- **Owner:** founder (R5) · Architect (child-node/fee when Phase A green) · TH-01 ops (эталон execution)
- **Type:** strategy / ladder
- **Status:** open (PROPOSED local 2026-07-19)
- **Priority:** high — frames task-pool optimization
- **Trigger:** Mira 2026-07-19 — Founder: сеть регистраций 100+ + кэмп; каждая нода = AI DEV agency; ops+DEV стандарт
- **Acceptance:**
  1. Strategy note live: `context/proposals/founders-100-track-v1.md` (+ local mirror OK)
  2. **Phase A (now):** эталон Orbios — AI agency + ops + DEV; Cursor+Discord; T-061/T-077; Patrik∥market; cushion — **до** размножения нод
  3. **Phase B:** 2–5 child-nodes после эталона; fee/legal packet (Architect) — not silent
  4. **Phase C:** 100+ via protocol clone + camp hub
  5. Task pool / Vector weekly: pull **P0 эталон** first; park mass founder-hire
  6. Alternate growth paths OK — эталон всё равно обязателен
- **Notes:** Name «Founders 100+» не в manifest — strategy label. Cross-ref vision-dump 2026-05-28 SERV→Principal→Mini-Founder. RF: passport OK outside RF.

### T-079 — Founder-focus slot (личная жизнь) vs Lika → DEV assist + camp
- **Owner:** founder (R5) · Lika (role clarify) · TH-01 ops (sourcing if +1)
- **Type:** personnel / Track A
- **Status:** open
- **Priority:** high — развести слоты, не ломать Яну и Лику одним ТЗ
- **Trigger:** Mira 2026-07-19 — нужна девочка с фокусом на фаундера; Лика пока не тянет; Лика готова DEV assist + кэмп
- **Acceptance:**
  1. **Decision:** (A) fix Lika on Founder-focus with clear DoD · **or** (B) +1 hire for Founder-focus · Lika moves fully to DEV assist + camp
  2. Written role boundaries: Founder-focus ≠ ops-ноды (Яна) ≠ camp/DEV assist (Лика)
  3. Tuhta/household (T-065) may sit under Founder-focus or ops — pick owner, no dual vacuum
  4. Яна **не** назначается «няней личной жизни»
- **Notes:** Complements T-054, T-065, T-027 schedule. Strategy § people slots.

---

## UNLOAD SESSION — 2026-07-17 (Mira bedtime)

- T-061 landed (external comms → TH-01 ops by 2026-08-04).
- T-062 landed (personal finance clarity + TH-01 ops delegation; reserve band noted Tier E).
- T-034 bumped P0 (laptop — needed anyway / blocks clean travel).
- T-063 landed (ДР plan — Bali dropped; full road prep; deadline 2026-08-04).
- T-064 landed (clothes + explicit personal allocation; July gap / Nana personal payouts noted Tier E).
- T-005 refreshed (Pop!_OS on 2nd ~1TB disk + remote/coding; soft deadline до 2026-08-04; realism: yes if disk ASAP + scoped).
- **Savelova feedback thread closed** (Illia boundaries — replies sent; not backloged as tasks).
- TH-01 evening dump triage: narrative already in `dumps/2026-07-17-camp-partner-household-eod.md`; backlog gaps → **T-065** (Tuhta/Founder Track), **T-066** (car keys), **T-067** (hire/stability gate); T-015 car note; T-063 Bali conflict resolved.
- **T-068** Steinar/pref junior — dump + decide path after Sat 12:50 call; Illia owns hours.
- **T-069** TH-01 self-surveys + shared bottleneck ownership (Founder answers ≠ sole performance owner).
- EOD ~00:00: **T-070** Sat DEV+pool+ultra+archive · **T-071** Discord Camp vs Founder Track order · **T-072** Patrik research start · **T-073** $500 gap patch · **T-074** bike/Yoan · **T-075** apartment sale = next-week cushion · T-031/T-010 files+passwords note.
- **T-005** P0 gift Pop!_OS до ДР; диск **делегирован** TH-01 (Founder correction 01:18).
- **T-076** August = Patrik ∥ market extension (тёплые касания, демо 2 сайтов, перебор поля). August strokes **достаточно** (18.07 01:24).
- **T-061 sharpened:** все внешние касания → TH-01; Founder interfaces = **Cursor + Discord only**.
- **T-077** 1–2 Linux ops-calls/day (AM+PM ~15m): LinkedIn/Mercury/browser; logs→OS+Discord digest.
- **2026-07-19:** **T-078** Founders 100+ Strategy · **T-079** Founder-focus vs Lika DEV/camp · T-054 Yana Mini-Founder fork · T-022 CTR pull order · `context/local/2026-07-19-founders-100-strategy.md`.
- Session: Founder may stay as long as wants — sea is finite list.
- **Closed 2026-07-18 ~00:04** — Founder sleep; perimeter held (Tier E backlog + dumps; Savelova thread closed outside canon).

(добавляй items сюда сам или говори Architect'у / Mira при сессии — закинут)

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
- **Notes:** Per Nova framing 2026-05-30 + OD-037 hardening. Операционка по квартире — через Broker-O→Илья→Founder (см. UA-02-M001 tasks).

### T-007 — Setup therapist channel для family-content
- **Owner:** founder
- **Type:** research
- **Status:** open
- **Trigger:** когда найдёшь подходящего терапевта
- **Acceptance:** Therapist identified, agreed на роль третьей стороны при семейных разговорах с Broker-1, первая сессия проведена.
- **Notes:** Channel = A025-compatible buffer (содержимое сессий = personal-tier, не в repo). Снимает с Founder day-to-day эмоциональную нагрузку семейных узлов.

### T-008 — Prep `~/orbios-migration-finance/` scratch + USB A/B
- **Owner:** founder
- **Type:** action
- **Status:** open
- **Trigger:** when ready для первой finance миграции
- **Acceptance:**
  1. `mkdir ~/orbios-migration-finance/{financial-data-dump,meta-info-for-migration}`
  2. `cd ~/orbios-migration-finance && git init` (локально, без remote)
  3. Куплены + зашифрованы 2 USB-флэшки (BitLocker), маркированы A/B
  4. Первый dump-материал положен в financial-data-dump/ (Mercury экспорт или подобное)
- **Notes:** Это разблокирует первый прогон OD-055 conveyor. После Phase 2 admission Vianca она работает на этом scratch'е через PH-01-M008 tasks.

---

(добавляй items сюда сам или говори Architect'у при сессии — он закинет)

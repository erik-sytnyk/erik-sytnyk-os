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

### T-003 — Перевести $1.5k Founder base income (стартовый высокий базовый)
- **Owner:** founder
- **Type:** action
- **Status:** open
- **Trigger:** now
- **Acceptance:**
  1. Mercury transfer выполнен на Founder personal account
  2. Отмечен здесь как done с датой + Mercury txn-id
  3. Когда finance conveyor запустится — backfill в ledger.jsonl: 
     entity=founder-personal, dir=out, category=spend.comp.founder-base, 
     amount=1500, ccy=USD
- **Notes:** Первая инстанция Founder base income payout. Future tracking через 
  personal monthly cadence (см. T-002 milestone monthly tracking).

---

(добавляй items сюда сам или говори Architect'у при сессии — он закинет)

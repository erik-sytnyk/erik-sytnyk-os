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

(добавляй items сюда сам или говори Architect'у при сессии — он закинет)

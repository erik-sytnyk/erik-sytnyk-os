---
date: 2026-05-29
type: inner-vision
participants: [DEV-01, Nova]
themes: [upstream-protocol-fee, management-fee-cap, franchise-model, principal-sponsorship, fractal-economy]
status: deferred — inner vision, no implementation pressure
implementation_trigger: first real child-Node prospect (A029) or first Principal sponsorship deal (A030)
captured_by: Architect (Claude Opus 4.7) per Founder request 2026-05-29
architect_filter: see § Architect filter notes
---

# Economic protocol — inner vision (A029/A030 deferred)

## § Source dialogue (verbatim)

> **Capture status (2026-05-29):** Verbatim from `integration/erik-nova-feod-updates/erik-nova-log.md` (local, gitignored). Source-of-record for inner vision = this file in `founder-private/vision-dumps/`.

### Exchange 1 — Upstream fee / Core License Protocol (A029 candidate)

**Erik:**

> Слушай, Нова, а мы можем в лучших традициях феодов сделать так чтобы при добавлении ноды он в парент башлял? Это будет экологично?

**Nova:** (см. полный текст в integration log; ключевые тезисы ниже)

- Переименование: не «феодализм», а **Core License Protocol** / **Node Infrastructure Fee**
- Симбиоз vs паразитизм: child Node потребляет R&D, LLC-обёртку, `migrate.sh`, апдейты upstream — upstream fee = экология
- Три формы: flat fee (~$100/mo), revenue share (2–3%), staking/equity в parent LLC
- Механизм: правило в `ledger.jsonl` + auto on month close (пример `txn_rule_001_parent_fee`, category `spend.network.license`)
- Продукт: FOUNDER OS → **децентрализованная франшиза**
- Action item (Nova): Lana conventions + Architect draft **A029 (Upstream Protocol Fee)** в бэклог

### Exchange 2 — 30% management fee cap (A030 candidate)

**Erik:**

> и еще схема по принципалам, если мы делаем спонсорство проекта на принципала, то у него 30 процентов за ведение максимум, так экологично?

**Nova:**

- 30% management fee = **золотой стандарт** при parent-sponsored проектах
- Декомпозиция: 70% operational substrate (hard costs, Principal не забирает) / max 30% management fee (фокус, риск, ADHD-менеджмент)
- Экология: защита от выжигания бюджета; фильтр качества Principal; эволюционный стимул (масштаб проектов или fork в mini-Founder + A029 upstream)
- Канонизация (Nova proposal): **Rule A030** в `sops/human_tz_template.md` — max 30% management fee, 70% bound to execution costs with ledger itemization
- Замыкание сетки: A029 сверху (license), A030 снизу (cap на Principal при спонсорстве)

**Verbatim (full Nova voice — both exchanges):** см. `integration/erik-nova-feod-updates/erik-nova-log.md` (123 lines, preserve emoji/diagrams there).

---

## § Architect filter notes (для будущих сессий)

**Что load-bearing (сохранить как принципы):**

- Upstream value flow от child Nodes к parent — фундамент устойчивой франчайз-модели
- Management fee cap при parent-sponsored проектах — стандартная hygiene
- Encoded protocol > ad-hoc handshakes долгосрочно
- Filter mechanism через willingness принять cap = real signal качества Principal'a

**Что DEFER до реального test case + legal review:**

- A029 «Upstream Protocol Fee» — securities/franchise law territory (US):
  - Revenue share между Wyoming LLCs может триггерить SEC registration
  - Equity stake = securities offering, требует exemption analysis
  - Multi-state franchise registration laws применимы
  - **Architect ratification insufficient — lawyer review required**
- A030 «30% Management Fee Cap» — over-generalized без первого реального deal:
  - Construction (cost-plus normative), marketing (% revenue), dev (cost+margin) — разные normative ratios
  - «70% direct costs» неопределено: время Principal'a inside или outside cap?
  - Конкретное число калибруется per-deal как precedent, не universal constant

**Premature canonization risk (тот же паттерн что Wyoming-LLC в A028 до filter):**

- Нулевая market validation (нет child Nodes, нет Principal sponsorship deals)
- Нет track record stability/R&D justification для license fee
- CAMP-0 как "shared physical hub all Nodes" = vapor (не построен)
- Auto-collection через ledger.jsonl ≠ banking-integration (mechanism не реализуем сейчас)

**Когда ratify to manifest:**

- A029: появился первый child-Node prospect → проектируем под конкретный кейс + legal review → ratify as A0XX
- A030: первый Principal sponsorship deal → калибруем число под конкретный deal → ratify как precedent

**Принципы которые МОЖНО зафиксировать сейчас (без чисел, без manifest amendment):**

1. Upstream value flow обязателен от child к parent Node — форма per-deal с legal review
2. Sponsorship cap principle — management fee explicit, capped, separate from execution costs (число per-deal)
3. Эти DRAFT principles живут в founder-private до first-real-case-ratification

---

## § Cross-refs

- A028 (Node Anatomy + Cloneability — где child Nodes концептуально упоминаются)
- Morning vision 2026-05-28 — [`2026-05-28-orbios-network-vision.md`](2026-05-28-orbios-network-vision.md) (Demiurge framing — продуктовая канва)
- OD-051 (tier model — economic protocol = future Founder-tier extension)

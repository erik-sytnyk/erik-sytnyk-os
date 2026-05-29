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

> **Capture status (Deputy 2026-05-29):** TZ carried a placeholder for both exchanges; verbatim Erik↔Nova text was **not** in the Deputy execution packet. **Do not treat anything below the stubs as Nova voice.** Founder/Architect: paste the two exchanges verbatim under the stubs (preserve emoji and formatting); submodule amend `dev-01: economic protocol vision — verbatim dialogue`.

### Exchange 1 — Upstream fee / Core License Protocol (A029 candidate)

<!-- PASTE VERBATIM: Erik message(s) + Nova response — upstream / child-Node / license / revenue share / ledger -->

*[pending verbatim paste from Founder private Nova session]*

### Exchange 2 — 30% management fee cap (A030 candidate)

<!-- PASTE VERBATIM: Erik message(s) + Nova response — Principal sponsorship / management fee cap / direct costs -->

*[pending verbatim paste from Founder private Nova session]*

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

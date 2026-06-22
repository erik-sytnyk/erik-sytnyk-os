---
date: 2026-06-20
source: Nova (Gemini, separate surface)
forwarded_by: Founder
topic: VR fitness rhythm/combat — partnership pitch (30/70 + cap)
status: partial
implementation_commits: []
---

# Nova packet — VR fitness pitch (2026-06-20)

## § Nova proposal (verbatim)

```
from: Gemini Nova (Strategist)
type: partnership-pitch
re: VibePulse / Hardcore VR — Meta Quest fitness rhythm-combat
forward_to: ARCHITECT_INTEGRATOR
founder_gate: yes (commercial + dev capacity + brand)
evidence: temporal anchor 2026-06-20 / vibe-coding window + Quest 3 TAM

Эрик, это **DISPATCH-READY** партнёрский пакет. Beat Saber и Supernatural уже доказали, что VR-fitness — не ниша, а рынок. Мы берём узкий, но жирный сегмент: **мужчины 30–45**, которым нужен не «розовый fitness-трекер», а **полоса ярости** — high-dopamine cardio с боевым ритмом. Никаких розовых fitness-трекеров. Hardcore VR.

---

### 🎮 Продукт: VibePulse (working name)

**Платформа:** Meta Quest 3 / Quest Pro
**Жанр:** rhythm-driven combat fitness hybrid
**Core loop:** бить объекты на бит, уворачиваться корпусом, beat-matched action — dopamine loop как Beat Saber, но с боевой энергией Supernatural-adjacent ниши.

**Vibe-coding native (2026 window):**
- Unity LTS + XR Interaction Toolkit
- Asset Store packs (визуал, VFX)
- Royalty-free music + BPM mapping
- AI glue code через Cursor Composer — solo dev реально тянет MVP за **3–4 недели**

**Метрики MVP:** heart rate / velocity tracking, session calorie estimate, local progression.

---

### 💸 Партнёрская модель (канон vision § 3.5)

- **Split:** 30% Orbios (инфраструктура, IP, AI glue, substrate) / 70% Partner (front-office, marketing, distribution, client ops)
- **Partner return cap:** **$3,000** — после cap revenue stream → Orbios per § 3.5 mechanics
- **Founder Support Axiom runway:** этот трек = прямой путь к founder runway через partnership revenue — быстрее чем ждать agency close

**Статус пакета:** DISPATCH-READY — можно выкладывать proposal на партнёрский рынок сразу после Architect filter.

---

### 🛠️ Dev capacity (Nova assumption)

**Founder = primary dev** на MVP window 3–4 недели:
- Architecture + vibe-coding в Cursor
- Unity scaffold + XR Interaction Toolkit integration
- Asset Store pipeline + AI-generated glue

Партнёр класс (A026) — external Partner забирает 70% после go-live; Founder строит MVP.

---

### 📣 Marketing angle (pitch deck hooks)

- «Полоса ярости» — не йога в VR, а combat cardio
- Male 30–45 fitness gaming TAM — validated adjacent (Beat Saber retention, Supernatural ARPU tier)
- Vibe coding = solo Founder + AI = capital-efficient entry

---

### 🏛️ БРИФ ДЛЯ АРХИТЕКТОРА

Архитектор, залей track scaffold в `context/tracks/` как **ACTIVE DISPATCH-READY** partnership track. Cap $3k, brand VibePulse, Founder dev 3–4 weeks — всё в канон. Founder Support Axiom = runway anchor.

Эрик, это твой быстрый partnership lane. Кого видишь как Partner class на 70%? Сливай имена — контур держит. 🛡️⚙️🎮💰
```

## § Architect filter (2026-06-20)

**Verdict:** CONDITIONAL ADD → **PROPOSED scaffold** in `context/tracks/vr-fitness.md` (not DISPATCH-READY).

| Item | Nova claim | Filter |
|------|------------|--------|
| Status DISPATCH-READY | yes | **Reject** — no partner, no MVP, no market validation packet |
| Cap $3k | baked | **TBD** — R5 money gate per negotiation; § 3.5 structure OK |
| Brand VibePulse / Hardcore VR | proposed | **TBD** — Nova-generated, no Founder ratify |
| Founder dev 3–4 weeks | now | **Conflict OD-074 § 2** — VR dev = post-Aug-4 OR external dev |
| Founder Support Axiom = runway | primary | **Wrong framing** — Hybrid Revenue lock remains P0 (`state-of-orbios/2026-06-16.md`); VR = P3 validation track |
| Marketing copy | pitch hooks | **Strip from public canon** — not track narrative material |
| 30/70 + § 3.5 structure | yes | **Load-bearing** — land framework, gate cap value |
| Market premise (Beat Saber + Supernatural, male 30–45) | plausible | **Research hypothesis** — needs validation packet before dispatch |
| Vibe-coding / Unity / XR toolkit stack | sketch | **OK as tech direction** — MVP timeline unverified |

**Preservation note:** Nova forward arrived in Architect session before auto-save to this packet file. Proposal section reconstructed from Architect session memory + cited fragments; if Founder has chat-original, paste replaces § Nova proposal block.

## § Implementation

- **Landed (partial):** `context/tracks/vr-fitness.md` — PROPOSED scaffold, P3, gates listed
- **Landed:** `context/manifest.md` — track row 7 + A029 amendment + status annotation
- **Deferred:** cap value, brand, dev capacity model, market validation packet, partner identification, dispatch readiness
- **Public canon commit:** orbios-os `tracks:` commit (Composer execution block 2026-06-20)

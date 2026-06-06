# UA-02 Gateway — Layer A Operational Pilot Spec

> **Status:** ACTIVE (Layer A per OD-075, ratified 2026-06-06)
> **Tier:** founder-private (Tier E) — operational pilot only, **NOT a product**
> **Scope:** N=1 validation on Founder's own Broker-1 containment case (UA-02 cluster per OD-037 / OD-060)
> **Layering:** Layer A only. Layer B = OD-075 canon hypothesis. Layer C productization deferred post-Orb-1.

---

## 1. Purpose

N=1 operational pilot for **Broker-1 containment** within the UA-02 cluster (per OD-037 / OD-060). Defensive **Track A** work: inbound detoxification + outbound response assistance via an AI-mediated gateway.

- **Inbound:** filter Broker-1 communications, extract operational signal, discard emotional shantazh after summary.
- **Outbound:** Founder dictates intent vector → Mira drafts non-confrontational response in Broker-1's expected tone → Founder reviews and sends.
- **Not a product** — pilot iteration on founder-private surfaces only (per OD-075 Layer A).
- Productization (Layer C) and public-tier gateway mechanics deferred per OD-074 Aug-4 Plan Minimum + OD-075 phasing.

---

## 2. Role split

Per OD-075 § 2 + Nova review 2026-06-06.

| Role | Surface | Responsibility |
|------|---------|----------------|
| **Lana** | Cursor Privacy Mode; Gemini 3.5 Flash default (OD-070) | Inbound intake filter. Reads Broker-1 communications (channels per § 3). Produces dry summary + risk-extract. Files noise-dumps per OD-071 Pillar 1. |
| **Mira** | Cursor Privacy Mode; model-variable | Outbound response composer. Founder dictates vector → Mira drafts cold, professional, non-confrontational reply in Broker-1's expected tone. |
| **Architect** | Opus 4.7 / 4.8 | Orchestration, edge-case routing, guardrail review. Escalation when inbound/outbound rules conflict or operational signal is ambiguous. |
| **Founder** | Human gate | Reviews **every** outbound message before send. Reviews Lana summaries on cadence (not real-time). Sole send authority. |

**Privacy discipline:** Broker-1 = opaque handle only (OD-044 F2). No real names in this spec, commits, or public-tier artifacts.

---

## 3. Inbound channels

Where Broker-1 communications arrive and Lana monitors:

| Channel | Reference |
|---------|-----------|
| `savelova.orbios@gmail.com` | Company-owned account (OD-066) |
| Discord Orbios-UA-02 | Server + channel structure per `orbios-os:clusters/ua-02/README.md § Discord Server`; synced exports → `integration/discord/ua-02-*/` |
| Other OD-060 ops channels | As configured in cluster ops setup; cross-ref `orbios-os:clusters/ua-02/active_missions.md` (UA-02-M001, UA-02-M002) |

Lana intake may also accept Founder-forwarded excerpts conversationally («noise dump: …» per `sops/external_noise_filter.md`).

---

## 4. Inbound filter spec

Lana applies OD-071 Pillar 1 pipeline, extended for Broker-1 gateway context.

### 4.1 Extraction categories

| Category | Handling |
|----------|----------|
| **(a) Operational signal** | Real action required: apartment-sale related (OD-035), legal / paperwork / appointment, document signature, gate-adjacent facts. **Surface to Founder** — do not discard. |
| **(b) Emotional shantazh content** | Summarized once, then discarded from active attention. Persistent patterns logged in noise-dump archive (§ 4.2). Does not spawn missions unless (a) hides inside. |
| **(c) Calibration metrics** | Frequency, urgency-claim count, BP-risk-indicator language patterns. Tracked in dump metadata for pilot evaluation (§ 10). |

### 4.2 Output surface

- Dry summary → Founder via `modules/founder-private/noise-dumps/` per OD-071 Pillar 1.
- **Template:** copy `noise-dumps/template.md` → `YYYY-MM-DD-<opaque-slug>.md` (slug operational only — e.g. `broker1-inbound-digest`, `ua-02-operational-signal`; **no personal names in filename**).
- **Cadence:** default **daily digest 1×/day**.
- **Immediate surface:** only when **(a) operational signal** demands action within **< 24h** (e.g. notary deadline, document signature window, gate-triggering fact).

### 4.3 Processing steps (Lana)

1. Acknowledge (internal — not forwarded raw emotional content to Founder).
2. Risk-extract — scan for (a); route real signal per `sops/dump_triage.md` if mission-worthy.
3. Neutralize + archive shantazh residue in noise-dump file.
4. Deliver dry summary + calibration metrics to Founder on cadence (§ 4.2).

---

## 5. Outbound assistance spec

### 5.1 Flow

1. **Founder dictates vector/intent** — one line. Example: «защити подписи на документы X, не вступай в спор».
2. **Mira drafts** response in Broker-1's expected tone:
   - Cold, professional, non-confrontational.
   - No escalation, no emotional mirroring, no Orbios/strategy leakage.
   - Tone calibration notes: `erik-sytnyk-os` personnel layer (Tier E/F); org-side handling patterns in `management/savelova.md` (pressure tactics, claim types — **Broker-1 opaque in all cross-tier refs**).
3. **Founder reviews → edits → sends himself** (or via designated channel). Mira never sends autonomously.
4. **Architect** reviews drafts on request or when Founder flags edge case.

### 5.2 Optional delay buffer (reactive-emotion removal)

| FVE band | Outbound behavior |
|----------|-------------------|
| **Red** (BP > 145/90 per Founder feedback / OD-024) | Mira **auto-defers outbound draft delivery for 24h**. Founder may override explicitly. |
| **Yellow** | Draft delivered; Founder may defer send at discretion. |
| **Green** | Default **12h delay buffer** before draft surfaces — removes reactive emotional component. Founder may request immediate draft. |

Delay = time before draft is presented to Founder for review, **not** auto-send. Send remains Founder-only.

---

## 6. Dosage calibration

Inbound gating tied to FVE band from founder-private health routine output.

| FVE band | BP / signal | Inbound behavior |
|----------|-------------|------------------|
| **Red** | BP > 145/90 | Lana **auto-defers Broker-1 inbound surfacing for 24h**. Collects silently. **Exception:** real operational signal per § 4(a) still surfaces immediately. |
| **Yellow** | Elevated but below red threshold | Inbound surfaces on cadence with **«defer-OK»** flag — Founder may ignore without guilt. |
| **Green** | Target range (≤ 130/80 target per health template; green = Founder self-assessment + BP in acceptable band) | Normal daily digest. |

**BP source:** latest morning/evening values from `modules/founder-private/health/` daily logs (Tier E shadow-mirror anchor per `concepts/shadow-mirror-spec.md`, landed 59f6213).

**Cross-ref:** OD-024 FVE KPI framework (private canon in `erik-sytnyk-os`); public dashboard aggregation → `orbios-os:log/founder/track_a_dashboard.md`.

---

## 7. Bounded-influence sandboxes

Designated channel(s) where Broker-1 input is **acknowledged politely** by Lana but routed **NOWHERE** into operational decisions.

- **Behavior:** Lana logs: «input received, acknowledged, no action triggered».
- **Purpose:** Broker-1 feels significance is engaged (A023 bounded-influence principle); **zero real impact** on sale gates, pricing, or Founder decisions.
- **Founder review:** weekly cadence optional — **fire-and-forget default**.
- **Candidate channels:** `#general` on Orbios-UA-02 for non-operational social coordination; bounded-influence topics explicitly excluded from `#sale-progress`, `#docs`, `#deal-structure` routing.

Architect maintains sandbox channel list; updates this section when OD-060 ops setup changes.

---

## 8. Out of scope (explicit, per OD-075)

- **Productization** (Layer C) — deferred post-Orb-1; no standalone product in Aug-4 Plan Minimum (OD-074).
- **Real-name exposure** of Broker-1 anywhere outside Tier E/F private layers — opaque handle maintained (OD-044 F2).
- **Public-tier (`orbios-os`) commits** about gateway mechanics until Phase 2 (2027 H1+ per OD-075 phasing).
- **New code surface** — operational orchestration via existing Lana/Mira persona surfaces only; markdown spec + conversational ops until Phase 2 integration scope.
- **Autonomous send** — Founder is always final authority on outbound messages.
- **Market validation claims** — N=1 founder case ≠ product-market signal.

---

## 9. Cross-refs

| Ref | Relevance |
|-----|-----------|
| **OD-037** | UA-02 cluster origin; A023 containment class |
| **OD-044 F2** | Broker-1 opaque handle |
| **OD-060** | UA-02 activation + Broker-O buffer (org-side) |
| **OD-066** | Discord setup + `savelova.orbios@gmail.com` channel |
| **OD-070** | Lana Cursor surface + Gemini 3.5 Flash default |
| **OD-071 Pillar 1** | Noise filter pattern reuse (`sops/external_noise_filter.md`) |
| **OD-074** | Plan Minimum framework — productization deferred |
| **OD-075** | This layering (Layer A pilot) |
| **A023** | Bounded-influence containment class |
| **A025 / OD-038** | Privacy firewall |
| **A028 layer 2** | Shadow Mirror Perimeter — adjacent |
| **`orbios-os:context/contractors/savelova.md`** | Org-side identity (serv-public; opaque cross-tier) |
| **`concepts/shadow-mirror-spec.md`** | Tier E mental-model anchor (59f6213) |
| **`noise-dumps/template.md`** | Inbound summary archive template |
| **`orbios-os:clusters/ua-02/active_missions.md`** | Active UA-02 ops missions |
| **`orbios-os:clusters/ua-02/README.md`** | Discord channel map |

---

## 10. Pilot evaluation criteria (informal)

After **4 weeks** of operation, Founder reviews:

| Metric | Question |
|--------|----------|
| **BP delta** | BP readings in Broker-1 contact windows vs baseline (pre-gateway)? |
| **Operational signal capture** | Any missed real-action items (signatures, appointments, gate facts)? |
| **Emotional friction** | Subjective Track A self-score — reduction in reactive drain? |
| **Outbound rewrite ratio** | Mira drafts used vs Founder sent as-dictated without edit? |

**Phase 1 trigger candidate:** if metrics show positive Track A effect → extend to 3–5 founder-friends cohort post-Orb-1 (OD-075 Layer C Phase 1). Negative or inconclusive → iterate Layer A or hold.

---

## Changelog

| Date | Author | Change |
|------|--------|--------|
| 2026-06-06 | Mira (Layer A landing per OD-075) | Initial operational pilot spec |

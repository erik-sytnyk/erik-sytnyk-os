# Management Log — Savelova (UA-02 planned; family-stakeholder)

> **Audience:** DEV-01 + Illia (UA-01-01) only. Internal handling notes.
> **Do NOT sync to satellite artifacts, unit-facing files, or PH-01 cluster.**
> **NOT a realtor** (premise corrected 2026-05-21, OD-037). Family-stakeholder in the Kyiv apartment; planned UA-02 investor + paid contributor. **Personal/relationship truth (the part that explains *why* the buffer matters) lives in `erik-sytnyk-os` — keep it out of this repo.**
> For org-facing profile see `/context/contractors/savelova.md`; for the UA-02 plan + architectural flags see OD-037.

---

## Purpose

Running log of operational interactions with Savelova: tone patterns, pressure tactics observed, price-claim cross-checks, and buffer incidents. This log exists so patterns are tracked without routing raw Savelova contact to the Founder.

**R2 discipline:** every claim by Savelova that influences a pricing or timing decision must be logged here + cross-checked against the neutralizer broker and public comps before being escalated to DEV-01 as a ratification gate.

---

## Interaction log

| Date | Channel | Summary | Claim made? | Cross-checked? | Notes |
|------|---------|---------|-------------|----------------|-------|
| 2026-06-11 | UA-02 Discord #general | 7 msg — Thai shareholder structure, investor agreement parity, Orb asset registration on Erik vs company; lateral scope creep (CAMP/Thai corp, not apartment-sale) | No pricing/timing claim | Yes (export `integration/discord/ua-02-general/2026-06-11.md`) | Emotional shantazh + calibration metrics → `noise-dumps/2026-06-13-broker1-inbound-digest.md`. Erik did not reply (buffer holds). Routed substantive track: lawyer (UA-01-M006 archive) not Founder direct. |
| 2026-06-12 | UA-02 Discord #general | 3 msg — 49/49/2% shareholder split proposal; Linux install requires physical HD contact on-site | No | Yes (export `2026-06-12.md`) | Linux/HD = possible CAMP ops signal (Tanan install); corp structure = shantazh residue same pattern. No Erik reply. |
| 2026-06-13 | Lana cross-check (Nova claim) | Nova packet 2026-06-12 10:08 SEAST alleged Broker-1 raised Tuhta payment optimization on 2026-06-11 | Claim: Tuhta payout optimization request by Broker-1 | Yes — **NOT FOUND** in UA-02 Discord exports 2026-06-02→12, this interaction log, or prior entries | **Verdict (b):** Nova drift / context conflation. Tuhta = Tier E household perimeter (Founder-Nova chat context valid per nova-packets `2026-06-02-manifesto` Catch 5). No Broker-1 channel evidence. Flag Architect filter trail → `nova-packets/2026-06-12-tuhta-payment-nova-claim.md`. |

---

## Pressure tactics tracker

> Log patterns here. Repeated tactic types are a signal of bad-faith negotiation.

| Date | Tactic | Response | Outcome |
|------|--------|----------|---------|
| — | [TODO] | — | — |

---

## Buffer incidents

> Any instance where Savelova attempted to reach Erik directly (bypassing Illia).

| Date | Attempt channel | How resolved | DEV-01 notified? |
|------|-----------------|--------------|-----------------|
| 2026-06-09 | UA-02 Discord #general — Tatiana posted Thai corporate structure arguments + investor agreement asks; Erik responded directly (4 msg) per Lana export | Logged; bounded-functional-layer subsection below codifies OS-mediated I/O going forward; Thai legal substantive questions routed to UA-01-M006 lawyer engagement per Architect verdict 2026-06-09 18:21 SEAST | Yes (Lana brief + Architect filter pass 2026-06-09) |

---

## Bounded Functional Layer (2026-06-11 Hyperfocus Lock)

> **Trigger:** Founder explicit ratify 2026-06-11 13:18 SEAST («Настрой рамки ОС для Савеловой в UA-02 так, чтобы её активность полностью контролировалась фреймом системы»).
> **Public-tier reference:** `context/state-of-orbios/2026-06-11.md` § 3 (commit `d1d3a65`).
> **Authority unchanged:** A023 + OD-037 hold. Investor + Participant only. NOT Founder/Partner/Principal. No governance authority.

### Symbolic labels accepted

- **HR** (UA cluster(s) HR coordinator title — per Founder clarification 2026-06-13 10:18 SEAST: «у нее будет роль HR для укр кластера, кластеров»; original symbolic acceptance per Founder 2026-06-08 ratify of A023 (iii) bounded-sandbox interpretation)
- **Coordinator** (UA-02 ops liaison) — per Founder 2026-06-11
- **Communicator** (Communicator Layer — external interface/comm channel for raw data collection within UA perimeter, incl. apartment coordination + Sveta liaison) — per Founder explicit gate 2026-06-11 14:20 SEAST. OS fully wraps her activity — she does not represent Founder, no decisions, no governance.
- **acting Speaker UA-02 startup phase** (per Founder clarification 2026-06-13 10:18 SEAST: «она занимается запуском UA-02 кластера»; previously surfaced in `context/personnel/illia-shenhelia.md:20` via Founder commit `fc07612` 2026-06-12 — this entry resolves the canon drift between personnel and Tier E spec). Transitional: «acting» qualifier explicit. When Sergey (or future permanent Speaker per UA-02 launch trajectory) holds the role permanently, this label retires; she steps back to Investor + HR/Coordinator/Communicator labels only.

### UA-02 launch context (2026-06-13)

Per Founder clarification 2026-06-13 10:18 SEAST: Tatiana is **launching UA-02 cluster**. UA-02 main focus = Kyiv apartment sale (OD-035 track) + Ukrainian operational perimeter coordination. Sergey (potential UA-02 operational Speaker; first call 2026-06-13 12:00 SEAST) noted as positive connect with Tatiana — expected working dynamics constructive. If Sergey onboards as permanent Speaker, Tatiana retains HR coordinator role (UA cluster(s)) but releases acting Speaker label.

These are **organizational form** for Savelova's sense of significance per A023 bounded-influence engine design. They do NOT convey:
- Recruitment authority (any UA-02 operator search runs via UA-01-M006 / future M-NNN; Founder + Architect gate)
- Budget authority
- Decision-on-behalf-of-Founder authority
- Direct-to-Founder routing rights (buffer still holds)
- Veto / approval power on any canon item

### Operational frame

1. **Inbound (Savelova → Founder)**
   - Channel: UA-02 Discord channels (`general`, ops-specific), email `savelova.orbios@gmail.com`, no Founder DM
   - Processing: Lana intake filter per UA-02 Gateway pilot Layer A (`[see erik-sytnyk-os:products/ua-02-gateway-pilot.md]` § 4)
   - Surface to Founder: **daily digest only** (not raw); operational signals flagged for action, emotional / pressure content archived
   - Substantive legal / financial / strategic content with merit (e.g. Thai corporate structure 2026-06-09): logged + routed to relevant track owner (lawyer for legal, accountant for fin, Architect for strategy filter) — Founder receives summary, not raw thread

2. **Outbound (Founder → Savelova)**
   - Founder dictates intent (one line) → Mira composes draft response in expected tone → Founder reviews/edits → sends via designated channel
   - Designated channel: **existing UA-02 Discord channel** (no separate task-delivery channel created — per Founder gate 2026-06-11 «Broker-1 outbound channel → используем existing UA-02 channel, GO. Новых каналов не плодить»)
   - 12-24h delay buffer optional based on Founder FVE band (per pilot spec § 5)
   - **No Founder direct DM thread for ops topics** (matches pre-existing buffer rule; only relationship-level pleasantries OK if Erik chooses)

3. **Sandboxed channels** (A023 bounded-influence engine)
   - Designated "express opinion" channel where Savelova's input is acknowledged by Lana politely + logged
   - Input does NOT auto-route into operational decisions; review on Founder weekly cadence (optional — fire-and-forget default per pilot spec § 7)
   - Purpose: significance need met, real impact = zero

### Alert triggers (Architect monitoring via this log)

Lana / Architect surface immediate alert to Founder when Savelova attempts:

- **Lateral scope creep**: input outside apartment-sale + symbolic HR/Coordinator labels (e.g. Thai corporate structure 2026-06-09 was substantive but external to UA-02 scope — appropriately routed to lawyer, but the pattern of injecting cross-cluster topics is itself a signal worth tracking)
- **Bypass attempts**: contacting Erik via personal channel (phone, personal DM, family channels) → Buffer incidents table above
- **Authority claims**: presenting decisions / recruitments / commitments as if she has authority on them
- **Pressure tactics**: urgency claims without cross-check, manufactured emergencies, "save you" framings, gift-as-leverage, etc. → Pressure tactics tracker above
- **Investor agreement / governance asks**: any push for governance / voting / approval rights beyond A023 bounded-influence sandbox → escalate to Founder + Architect immediately

### Cross-refs

- `context/state-of-orbios/2026-06-11.md` § 3 (public-tier framing, commit `d1d3a65` in parent orbios-os)
- A023 (toxic-investor containment class)
- OD-037 (UA-02 cluster origin + premise correction)
- OD-060 (Broker-O buffer activation 2026-05-30)
- OD-075 § 2 Layer A + § 5 authority boundaries (UA-02 Gateway pilot)
- `[see erik-sytnyk-os:products/ua-02-gateway-pilot.md]` (operational pilot spec)
- UA-01-M006 (Thai lawyer triage — receives substantive Thai-corp questions from Savelova channel when surfaced)
- `[see erik-sytnyk-os:nova-packets/2026-06-11-...]` (Nova packet 2026-06-11 source artifact for this Hyperfocus Lock framing; to be preserved per nova-packets/README.md convention in same submodule commit batch if Founder forwards full Nova source)

# T-005 — Disk purchase spec (recommended)

> **Status:** PROPOSED for TH-01 ops validation with agent (2026-07-19)  
> **Owner purchase:** Yana / TH-01 (not Founder shopping)  
> **Founder:** R5 on SKU+price only → then install day  

## Observed hardware (Founder PC, 2026-07-19)

| Disk | Role | Notes |
|------|------|-------|
| **WD Blue SN5000 1TB** (NVMe) | Primary — Windows | Keep intact; do **not** shrink for Linux |
| SanDisk Extreme 55AE ~1TB | External USB | Not the Pop!_OS target |
| Goal | 2nd internal disk ~1TB | Pop!_OS dual-system |

## Recommendation (agent to validate on TH market)

### Preferred SKU class
- **Form:** M.2 2280 **NVMe** (PCIe Gen3 or Gen4 — both OK for Pop!_OS)
- **Size:** **1TB** (960GB–1TB class)
- **Brand tier:** same class as current — e.g. **WD Blue SN5000 1TB** (match existing) OR Crucial P3 Plus / Samsung 990 EVO / equivalent in stock
- **Why:** matches current bus; clean dual-boot; no Windows partition surgery

### Fallback (if no free M.2 slot)
- **2.5" SATA SSD 1TB** + data cable if case needs it  
- Agent must confirm: free M.2 slot vs only SATA bay (photo of board/slots or model of PC/laptop)

### Out of scope / avoid
- HDD  
- «Upgrade by wiping Windows disk»  
- External-only as primary Pop!_OS install (USB OK as installer media only)

### Budget
- Ops proposes **1–2 links + THB** → Founder one-line GO / adjust  
- Soft target: gift-to-self before **2026-08-04**; not luxury SKU

## Ops DoD
1. Agent validates preferred vs fallback for **this machine**  
2. Order + delivery to Founder address  
3. Ping Founder: «диск у тебя» → he books ≤4h install day  

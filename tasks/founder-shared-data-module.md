# Founder shared data module — scope & options (T-028)

> **Status:** PROPOSED. **Tier:** E.  
> **Trigger:** TH-01 assistant (future) needs admin access to Founder operational data (schedule, preferences) without full founder-private vault exposure.

---

## 1. Purpose

Provide a **bounded, agent-accessible data layer** for Founder personal operational artifacts:
- Schedule (hybrid Discord + OS)
- Working preferences (hours, block rules, notification settings)
- Quick-reference contacts / session participants
- Other lightweight operational data (not deep personal / family / health verbatim)

**Goal:** TH-01 assistant can manage schedule and coordinate without needing full Tier E vault access; Lana continues current role.

---

## 2. Proposed locations

| Option | Path | Pros | Cons |
|--------|------|------|------|
| **A** | `modules/founder-shared-data/` (new submodule) | Clean separation; explicit access model; submodule discipline applies | New submodule overhead |
| **B** | `modules/founder-private/shared-data/` (subfolder) | Simpler; inherits existing Tier E ACL | Less explicit boundary; TH-01 assistant would need founder-private access |
| **C** | `founder-private/` root (new folder) | Minimal change | Blurs personal vs operational shared data |

**Architect recommendation preferred** before implementation.

---

## 3. Initial contents (stub)

```
founder-shared-data/
├── schedule/
│   ├── 2026-06-18.md
│   ├── 2026-06-19.md
│   └── ...
├── preferences.md          # working hours, block size (30min), justification rules
├── contacts.md             # frequent session participants + roles
└── README.md
```

---

## 4. Access model (proposed)

| Actor | Access | Rationale |
|-------|--------|-----------|
| **Lana** | read/write | Current schedule management + intake |
| **TH-01 Assistant (future)** | admin (read/write/confirm/reschedule) | Delegate calendar ownership per Founder request |
| **Other units / Speakers** | read-only (optional) or none | Visibility without mutation rights |
| **Architect / Composer** | read (session context) | Operational awareness only |

**Privacy:** Module contains operational data only. Deep personal / family / health content stays in `founder-private/` proper or `erik-sytnyk-os`.

---

## 5. Integration points

- `sops/founder_schedule.md` (T-027) — schedule files live here
- `agent/personas/lana.md` — Lana schedule awareness
- TH-01 assistant onboarding (future) — admin access grant
- `sops/founder_outbound_comms.md` — decision gate pattern (may apply to schedule changes)

---

## 6. Next

1. Founder confirms preferred location (A/B/C)
2. Architect review (recommended for access control + submodule discipline)
3. T-028 acceptance → module creation + SOP update

---

*Draft 2026-06-17 for T-028 scoping.*

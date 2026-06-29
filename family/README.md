---
title: Family — filing convention
tier: founder-private
created: 2026-06-29
status: ACTIVE
---

# Family — filing convention

> Tier E (founder-private). Filing organization для family-related content within Founder's private perimeter. **NOT a new access tier** — это subdirectory housekeeping inside existing Tier E.

## Purpose

Organize family-related correspondence + relationship dynamics + investor claims + money flow proposals across multiple family members without polluting topic-based playbooks (e.g., `topics/kyiv-apartment-private.md`).

## What does NOT change

- **Privacy access tiers unchanged**: founder-private remains founder-private; no new «Family member» access level introduced
- **A023 containment frame holds** for A023-class family members (Tatiana / Mama) per OD-037 + OD-038 firewall
- **A026 social architecture** unchanged: existing six classes (Founder, Partner, Investor, Principal, Serv Unit, Contractor) apply; family relationships are sub-attribute, not new class
- **A025 / OD-038 privacy firewall** holds: real names + family content stays Tier E; opaque labels in public perimeter

## Structure

```
modules/founder-private/family/
├── README.md (this file)
├── savelova-tatiana/        # A023 mother (toxic-origin investor containment)
│   ├── correspondence-log.md
│   ├── investor-claims.md
│   └── pressure-patterns.md
├── kateryna-sister/         # volatile contact channel; surfaced Elena Ivanovna referral
│   └── correspondence-log.md
├── alisa-daughter/          # Tier E personal; future allocations
│   └── notes.md
└── elena-ivanovna-candidate/  # NEW UA-02 Communicator (HIGH CONFIDENCE pending R5)
    └── candidacy-brief.md
```

## Relationship → canon class mapping

| Family member | Canon class (A026) | Special framing | Public-tier label |
|---------------|-------------------|-----------------|-------------------|
| Tatiana Savelova (mother) | Investor | A023 toxic-origin containment | «A023-perimeter participant» / «UA-02 family-stakeholder participant» |
| Kateryna (sister) | Contact (no formal class) | A009 Legacy Parasites adjacent (volatile) | Not surfaced in public |
| Alisa (daughter) | Beneficiary (Tier E personal) | Personal/family scope | Not surfaced in public |
| Elena Ivanovna (candidate) | Contractor (if ratified) | UA-02 Communicator role | «UA-02 Communicator» (opaque) |

## Cross-refs to existing tier E files

This filing organization complements (does NOT replace):
- `modules/founder-private/topics/kyiv-apartment-private.md` — topic-anchored playbook (apartment + family money flow)
- `modules/founder-private/management/savelova.md` — Tatiana bounded functional layer (existing)
- `modules/founder-private/management/sveta-tretyak.md` — UA-02 external relay stub
- `modules/founder-private/nova-packets/` — Nova packets per convention

## When to use family/ vs topics/

- **topics/** = task-anchored (apartment sale, intake integrations, project-specific dynamics)
- **family/** = relationship-anchored (correspondence per person, claim history per person, role transitions per person)

Example: Tatiana's $7k investor claim 2026-06-29 lives in:
- `topics/kyiv-apartment-private.md` § 7 — money flow context for sale-class R5 decision
- `family/savelova-tatiana/investor-claims.md` — relationship-anchored history (chronological investor positioning by her over time)

Cross-link aggressively между these so neither becomes single point of truth.

## Migration plan (not urgent)

When energy permits OR Liza onboarding Phase 1+ ramps:
- Extract family content from topics files → relationship-anchored family/ files
- Preserve cross-refs both ways
- Topics files retain task context + reference family/ for relationship history

## Privacy discipline

- All family/ content = Tier E founder-private
- NEVER surface real family names в public-tier files (existing OD-038 firewall continues to enforce)
- Opaque labels per A025 convention for any cross-references to public-tier docs
- Privacy hook (`scripts/setup_githooks.ps1` pre-push) catches accidental leaks

## Cross-refs

- `modules/founder-private/topics/kyiv-apartment-private.md`
- A023 containment frame (OD-037 + OD-063)
- OD-038 / A025 privacy firewall
- vision-v1 § 5 / A026 social architecture (six classes)
- Memory feedbacks: `project_savelova_ua02`, `feedback_dont_burden_erik_with_meta`

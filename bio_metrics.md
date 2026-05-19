# bio_metrics.md — Founder Biometric & Health Tracking

> **Audience:** Erik (DEV-01) + Claude on explicit request only.
> **Source:** `orbios-os-v3:/log/open_decisions.md` OD-027.
> **Note:** High-level operational BP readings used for the Read-Only gate live in `orbios-os-v3:/context/state-of-orbios/<date>.md § 5`. This file holds the deep history: daily logs, symptoms, fitness, supplements.

---

## BP Protocol

**Target:** ≤ 130/80 sustained (Track A FVE KPI, per `orbios-os-v3` manifest A013).
**Measurement:** morning reading, after waking + 10 min rest, before coffee.

### Daily BP Log

| Date | Systolic | Diastolic | Pulse | Time | Notes / symptoms |
|------|----------|-----------|-------|------|-----------------|
| [TODO Erik — add first entry] | — | — | — | — | — |

---

## Sleep Log

**Target:** ≥ 7h / quality ≥ 3 (1–5 scale).

| Date | Bedtime | Wake | Hours | Quality (1–5) | Notes |
|------|---------|------|-------|---------------|-------|
| [TODO Erik] | — | — | — | — | — |

---

## Fitness Program

[TODO Erik — describe current program: type, frequency, duration, intensity]

### Weekly Training Log

| Week | Session 1 | Session 2 | Session 3 | Notes |
|------|-----------|-----------|-----------|-------|
| [TODO Erik] | — | — | — | — |

---

## Supplement Stack

[TODO Erik — list current supplements: name, dose, timing, purpose]

| Supplement | Dose | Timing | Purpose |
|-----------|------|--------|---------|
| [TODO Erik] | — | — | — |

---

## Lab Results

[TODO Erik — log blood work, urine, other tests as they arrive]

| Date | Test | Key values | In range? | Notes |
|------|------|-----------|-----------|-------|
| [TODO Erik] | — | — | — | — |

---

## Weight & Body Composition

| Date | Weight (kg) | Body fat % (if measured) | Notes |
|------|------------|--------------------------|-------|
| [TODO Erik] | — | — | — |

---

## Symptoms & Recovery Notes

[TODO Erik — free-form log of notable symptoms, recovery observations, energy patterns. No need to be clinical — stream of consciousness is fine here.]

---

## Cross-reference in orbios-os-v3

When `orbios-os-v3` artifacts need to reference biometric data, use:
```
[see erik-sytnyk-os:bio_metrics.md § daily-bp-log]
```

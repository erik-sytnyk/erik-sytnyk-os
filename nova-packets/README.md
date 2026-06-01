# Nova Packets — proposal + implementation audit trail

> **Tier:** Founder-private (this submodule).
> **Convention ratified:** 2026-06-01 (Founder + Architect).

## Purpose

Каждый Nova-output (proposal, packet, vision, missing-question, etc.) который Founder forwards Architect для filter — сохраняется как verbatim packet **before** any canonization action. Парится с Architect filter + implementation status.

Решает три проблемы:
- Nova content terявается между chat-сессиями
- Implementation decision (landed / deferred / rejected) теряется без аудита
- Future Architect не видит **почему** что-то landed/refused

## File format

Один файл per packet: `YYYY-MM-DD-<topic-slug>.md`.

```markdown
---
date: YYYY-MM-DD
source: Nova (Gemini, separate surface)
forwarded_by: Founder
topic: <short topic>
status: landed | partial | deferred | rejected | pending
implementation_commits: [hash1, hash2, ...]   # if landed/partial
---

# Nova packet — <topic>

## § Nova proposal (verbatim)

[Дословный текст Novа — emojis preserve, formatting preserve, errors preserve.
 Никаких правок. Это её voice as-is.]

## § Architect filter

[Architect (Opus) разбор: что load-bearing, что recite канона, что hallucination,
 что premature, что worth landing.]

## § Implementation

[Что сделано (commit hashes + paths) ИЛИ почему отложено/отклонено.
 Cross-refs на OD/SOP/conventions если landed в канон.]
```

## Discipline

- **Nova proposal arrives → packet file created BEFORE canonization.** Никаких прямых landings в канон без packet trail.
- **Architect filter is mandatory.** Каждый packet получает filter section прежде чем implementation решается.
- **Implementation решается explicitly:** landed (с commit refs) / partial / deferred (с trigger condition) / rejected (с reason).
- **Hallucinations / errors сохраняются verbatim в proposal section**, filter section их catches. Это feature не bug — pattern-recognition over time.

## Cross-refs

- `agent/personas/architect.md` — Architect filter discipline
- handoff `log/architect-sessions/2026-05-31-handoff-opus-4-7-to-4-8.md` § Nova pattern observations
- `modules/founder-private/vision-dumps/` — для длинных vision-shaped content; packets = для operational proposals/questions

## Backlog

Прошлые Nova packets (2026-05-28 → 2026-05-31), которые landed без полного filter trail — могут быть post-hoc документированы здесь если Founder скажет. Не урогентно.

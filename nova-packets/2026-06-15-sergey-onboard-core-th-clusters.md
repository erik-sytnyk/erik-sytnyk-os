---
date: 2026-06-15
source: Nova (Gemini, separate surface)
forwarded_by: Founder
topic: Sergey Onboarding / UA-02 Activation / Personal assistant cluster (CORE-01 vs TH-01)
status: partial
implementation_commits: []
---

# Nova packet — Sergey onboard + CORE-01/TH-01 assistant cluster (2026-06-15 11:07 SEAST)

## § Founder direct input (verbatim before Nova response)

```
Сергей ок как кандидат, но технически не очень продвинут, не смотря на то
что он учитель информатики, для роли спикера UA-02 он подходит, с этим
мы его и добавляем.

Нужна реальная польза с UA-02

Плюс я ищу себе ассистента для тесной работы в режиме отдельного кластера

CORE-01

сразу с топ тиер, или TH-01

для UA-02 нужна подписка на курсор и инструкция как добавлять нового
человека, я предлагаю SOP с созданием имейла на компанию, дискорда
```

## § Nova proposal (verbatim)

```
🛠️ Модуль Интеграции: Пошаговый SOP для Спикера UA-02

Регламент разворачивания нового узла (UA-02 Онбординг):

1. Создание корпоративной почты:
   Создать новый почтовый ящик на домене компании (или выделенный
   рабочий аккаунт Gmail) в формате: sergey.ua02@orbios.com (или
   согласованный аналог).

2. Разворачивание Discord-интерфейса:
   Зарегистрировать новый аккаунт Discord на корпоративную почту.
   Добавить его в наш рабочий сервер Orbios с выдачей роли Speaker
   и доступом исключительно к каналам кластера UA-02. Настроить
   вебхук для ИИ-агента Lana, чтобы она начала парсить его async-
   статусы.

3. Установка и лицензирование Cursor:
   Скачать и установить редактор Cursor (cursor.sh). Оформить
   подписку Cursor Pro ($20/мес), привязав корпоративную почту и
   карту компании.

4. Генерация SSH-ключей и доступ в Git:
   Сгенерировать локальную пару SSH-ключей на его машине. Публичный
   ключ перенести в GitHub/GitLab организации Orbios. Выдать права
   на чтение и запись (Write access) только для директорий
   context/briefs/ и папки его кластера context/clusters/ua-02/.

👥 Стратегический Контур: Поиск Ассистента (CORE-01 / TH-01)

1. Вариант CORE-01 (Топ-Тиер / Гвардия):
   * Профиль: Сильный системный бизнес-ассистент/PM из прайм-пула.
   * Назначение: Полное управление бэклогами, упаковка дампов в ТЗ,
     контроль исполнения задач Спикерами, координация ИИ-агентов.

2. Вариант TH-01 (Локальный тайский кластер):
   * Профиль: Локальный англо-/тайско-говорящий ассистент в Пхукете.
   * Назначение: Физическое плечо на земле. Координация стройки Кэмпа,
     взаимодействие с Анной, разрешения, юридический трек вывода Наны,
     закупки, контроль Тухты и бытовая логистика.

💡 Рекомендация Новы: Нам нужны оба трека, но критически важнее
запустить TH-01. Стройка Кэмпа и Orb 1 требует физического присутствия
и контроля документов на тайском языке.

🛡️ Архитектор, принимай вводные:
=== REPO TACTICAL DIRECTIVE ===
Target: context/clusters/ua-02/sergey-onboarding.md
Status: Sergey APPROVED as Speaker UA-02.
Action: Deploy Onboarding SOP. Create CORE-01 and TH-01 configuration
stubs in roles.md.
================================
```

## § Architect filter

**🟢 Aligned with Founder direct input:**
- Sergey APPROVED as Speaker UA-02 (Founder explicit: «подходит, с этим мы его и добавляем»)
- Cursor subscription needed for UA-02 onboarding (Founder explicit)
- SOP for new-person integration (email + Discord) needed (Founder explicit)
- Real value from UA-02 needed (Founder explicit: «нужна реальная польза с UA-02»)
- Personal assistant in separate cluster (Founder explicit: CORE-01 OR TH-01)

**🔴 Catches in Nova SOP:**

1. **`sergey.ua02@orbios.com` corporate domain invented**: Orbios does NOT have orbios.com domain registered/operating. Existing pattern per OD-066: `<surname>.orbios@gmail.com` (savelova.orbios@gmail.com, tretyak.orbios@gmail.com). Correct format = `sytnyk.orbios@gmail.com` (Sergey's surname not known to Architect; pattern needs Founder confirm of surname).

2. **`context/clusters/ua-02/sergey-onboarding.md` wrong path**: should be `clusters/ua-02/sergey-onboarding.md` (no `context/` prefix). Existing repo structure has `clusters/<id>/` not `context/clusters/`.

3. **«Настроить вебхук для ИИ-агента Lana» invented**: Lana operates via Cursor session reading repo + Discord export pipeline (per `sops/discord_sync.md` + OD-061 Phase 3). No webhook architecture exists. Discord sync is poll-based (4×/day per OD-061), not webhook push.

4. **«Создать CORE-01 / TH-01 configuration stubs in roles.md» wrong file**: CORE-01 / TH-01 = cluster IDs, not roles. Cluster topology lives in `clusters.md` + per-cluster directory. `roles.md` is class taxonomy (Founder/Partner/Investor/Principal/Serv Unit/Contractor per A026).

5. **Cluster naming pattern unclear**: TH-01 = follows geo pattern (Thailand = TH, like UA, PH). CORE-01 = function pattern (not in existing convention). Need SOP for cluster naming OR Founder explicit choice. Architect view: TH-01 fits existing geo pattern; CORE-01 needs separate naming-class decision if Founder wants function-based namespace.

6. **SSH keys + Write access for context/briefs/ + ua-02/**: heavy default. Existing pattern:
   - Vianca (PH-01-01): External Input Unit, NO commit access, all commits proxied through Erik/Illia (per management/vianca.md § Access model)
   - Illia (UA-01-01 legacy ID, now PH-01 interim Speaker): full commit access
   - Tatiana: Discord access only AFAIK
   Sergey as Speaker UA-02 — access tier needs Founder explicit decision. Suggest start with proxied commits (External Input Unit pattern) for trial period, then escalate to direct commit access after calibration.

7. **«Подписка Cursor Pro $20/мес»**: amount + payment method (corp card vs reimbursement) = R5 money gate. Architect surfaces, Founder ratifies.

8. **Recommendation TH-01 vs CORE-01 priority**: Nova prescribes TH-01 first. Founder explicit asked «или» (or) — wants choice, not prescription. Architect surfaces both with cost/value tradeoffs.

**🟡 Sergey "fit Speaker UA-02"**: Founder confirmed explicit. Sergey technical skill modest (information teacher) — acceptable for Speaker role (coordination + execution, not coding). SOP discipline + Founder OS regulation will support skill gap.

## § Implementation

**LANDED 2026-06-15 (this batch):**
- Nova packet preserved verbatim (this file)
- Fable 5 availability constraint updated in mira.md / README / .cursorrules (parallel commit, see d1d3a65+ batch)

**FORTHCOMING this batch:**
- `clusters/ua-02/sergey-onboarding.md` (Sergey-specific operational file with correct path + correct email pattern + correct access tier framing)
- Pre-existing SOPs referenced: `sops/add_unit.md`, `sops/discord_unit_registration.md`, `sops/initiate_serv_ops_cursor.md`

**GATED (Founder explicit needed):**
- Sergey surname confirm (for email handle)
- Cursor Pro $20/mo cost + payment method
- Access tier: External Input Unit (proxied commits) OR direct commit access
- CORE-01 vs TH-01 priority pick
- Cluster naming convention: TH-01 fits geo pattern; CORE-01 needs framework decision
- vision-v1 DRAFT ratify (still pending from previous turn 8e74cb5)

## § Cross-refs

- OD-066 (email handle pattern: <surname>.orbios@gmail.com)
- OD-061 (Discord sync — poll-based, not webhook)
- `sops/add_unit.md`, `sops/discord_unit_registration.md`, `sops/initiate_serv_ops_cursor.md` (existing onboarding building blocks)
- `[see erik-sytnyk-os:management/vianca.md]` § Access model (External Input Unit pattern reference)
- `context/clusters.md` (topology, NOT roles.md for cluster IDs)
- `context/roles.md` § A026 Six classes (class taxonomy, NOT cluster IDs)
- Adjacent Nova packets: 2026-06-13 (Sergey/CAMP/Tuhta), 2026-06-14 (vision canonization)

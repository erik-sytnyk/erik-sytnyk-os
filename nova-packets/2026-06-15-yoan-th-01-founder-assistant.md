---
date: 2026-06-15
source: Nova (Gemini, separate surface)
forwarded_by: Founder
topic: Yoan inbound sourcing channel / Core Founder assistant / TH-01 cluster vacancy spec
status: partial
implementation_commits: []
---

# Nova packet — Yoan sourcing + TH-01 Founder Assistant vacancy (2026-06-15 11:25 SEAST)

## § Founder direct input (verbatim, including Yoan chat + Founder priorities)

```
[6/13/2026 12:06 PM] Тот Самый (Yoan): Салют, если еще актуально
ассистентка- Могу помочь. Есть несколько форматов.
- Либо я просто подбираю 3–5 сильных кандидатов и передаю тебе на выбор.
- Либо беру процесс полностью: поиск, собеседования, тестовые задания
  и внедрение ассистента в работу с ИИ.
- Также могу помочь с обучением и выстраиванием системы работы.

[6/13/2026 2:17 PM] Erik:
Спасибо ) Давай на следующей неделе плиз, как раз работу закончил на этой
Я бы взял хорошего кандидата и стартовал отдельный кластер (рабочую
мини группу). Мне нужен спикер кластера (человек которому можно
поручить что-то), например благополучие фаундера 😂

[6/13/2026 2:19 PM] Erik: Казахстан преференция по локации, я думал
там программистов поискать тоже, если будет актуально

[6/13/2026 2:21 PM] Erik: По паспорту РФ подходит тоже, но нужно
чтобы без сильных экономических связей с РФ, чтобы мы экологично
работали с Украиной тоже

[6/13/2026 4:38 PM] Yoan: Хорошо давай на следующей неделе. Ты скинь
пока основные задачи, условия что от ассистентки хочешь? И что готов
предложить. Накидай хотябы черновую вакансию.

[Founder current input 2026-06-15]:
- Ассистент отвечает за Founder track, работает через OS
- По остальным трэкам — участие по возможности
- Базовый рейт + бонусы ожидаются как условия работы
- Нужно пересечение с моей таймзоной 10-17 по Таю
- Важно: возможность созвонов и общения голосом (видео)
- Founder revision на Nova draft: пересечение должно быть 2+ часа
  для обсуждения рабочих дел (не full window 10-17 mandatory)
```

## § Nova proposal (verbatim)

```
📜 Операционный профиль: Ассистент Фаундера / Управляющий личным
   контуром (Orbios OS)
Локация в репозитории: context/roles/founder-assistant-spec.md
Engagement Model: Контрактное операционное партнерство
Целевая таймзона: SEAST (Обязательное пересечение с Пхукетом с 10:00
   до 17:00)
Географический фокус: Казахстан (Алматы/Астана) или СНГ-экспаты за
   пределами РФ

[Position content includes:]
- Role overview (AI-native organization, Founder Track owner)
- Зоны ответственности: Менеджмент Личного Трека / Интерфейс OS /
   Кросс-кластерное участие
- Критерии соответствия: Синхронная готовность (10-17 SEAST) /
   Тех зрелость / Психологическая устойчивость / Бонус — Kazakhstan
   programmer network
- Условия и компенсация: trial + base rate + milestone-бонусы

🛡️ REPO TACTICAL DIRECTIVE:
Target: context/roles/founder-assistant-spec.md
Action: Write custom vacancy draft. Set origin source to Yoan
Sourcing Channel.
```

## § Architect filter

**🟢 Strong alignments:**
- Yoan sourcing approach = clean operational delegation
- Geo criteria (Kazakhstan preference, RU passport OK if no strong economic ties to RU) = real strategic concern (Ukraine cluster ecology)
- Founder track ownership = role essence
- Base rate + bonuses framing
- Voice/video for this role = different from default async-first
- Separate cluster (TH-01) for assistant = Founder explicit decision

**🔴 Catches:**

1. **`context/roles/founder-assistant-spec.md` wrong path**: `roles.md` is A026 class taxonomy (Founder/Partner/Investor/Principal/Serv Unit/Contractor), NOT a folder for vacancies. Cluster-specific recruitment lives under `clusters/<cluster>/recruitment/` per existing PH-01-02 pattern. Architect proposes: `clusters/th-01/founder-assistant-spec.md` (or `clusters/th-01/recruitment/founder-assistant-spec.md` if expanding for future TH-01 hires). Creates `clusters/th-01/` directory pre-cluster-activation with README marking "proposed, pending first Speaker onboard".

2. **«Обязательное пересечение 10:00-17:00» per Nova** vs **Founder revision «2+ часа overlap для рабочих дел»**: Founder explicit revision — full window 10-17 is NOT mandatory; 2+ hour overlap within Thai working window for work discussion IS mandatory. Geo eligibility: Kazakhstan (Almaty UTC+5) gives 4-5 hour overlap easy; Moscow time gives ~3 hours overlap; Western Europe / Americas mostly excluded by 2-hour rule.

3. **«milestone-бонусы»** as concrete compensation element: same IN DEVELOPMENT status per vision-v1 § 3 + OD-075 GTM addendums. Should be marked «structure in development, base rate ratified» not «прозрачная сетка».

4. **«Управляющий Личным Контуром»** clunky as job title: cleaner alternatives — «Founder Track Lead», «Founder Operations Partner», «Ассистент Фаундера + Founder Track Lead» as composite.

5. **«Тангиально личный контакт»** in role framing: voice/video = collaboration tool for this specific role, not «обязательный плотный контакт». Wording should reflect: scheduled work calls fit Founder's energy + the role; not always-on availability.

6. **Yoan message draft style**: marketing-style («Лови черновой профиль») is fine for Yoan personal context but could be tighter.

**🟡 Catches:**

- Single-cluster TH-01 framing assumes assistant alone in cluster — fine for now, but if Kazakhstan developer network materializes per Founder note, could grow into multi-node cluster. Spec should not preclude.
- «Спикер кластера» role for assistant — Founder said «спикер кластера», which fits the Speaker = operational role pattern (not new class). Class = Serv Unit per A026.

## § Implementation

**LANDED 2026-06-15 (this batch):**
- Nova packet preserved verbatim (this file)
- `clusters/th-01/` directory created with README marking pre-activation status
- `clusters/th-01/founder-assistant-spec.md` (NEW) — vacancy draft with Architect filter catches applied + Founder 2+ hour overlap revision

**ACCEPTED:**
- TH-01 cluster naming (geo pattern fits)
- Yoan sourcing approach as primary recruitment channel
- Founder track ownership as primary role responsibility
- Geo criteria (Kazakhstan preference, RU passport OK if no economic RU ties)
- Voice/video = role-specific accommodation
- 2+ hour overlap requirement (Founder revision)

**REJECTED (per Architect filter):**
- `context/roles/founder-assistant-spec.md` path (wrong location)
- «Обязательное 10-17» rigid window (Founder revised to 2+ hour overlap)
- Concrete milestone bonus structure (marked IN DEVELOPMENT per vision-v1 § 3)
- «Управляющий Личным Контуром» clunky title (cleaner alternatives in draft)

**GATED (Founder explicit needed):**
- Vacancy draft review + ratify before Yoan delivery
- Cursor Pro $20/mo + future TH-01 cluster member subscriptions (R5 money)
- Yoan engagement model: 3-5 candidates / full process / turnkey + AI integration
- Yoan compensation for sourcing service

**FORTHCOMING this batch:**
- Yoan message draft (chat surface, Founder edits before sending)

## § Cross-refs

- A026 (roles.md Six classes — assistant class = Serv Unit; «спикер кластера» = operational role)
- OD-066 (email handle convention — applies when TH-01 onboarding starts)
- OD-070 (Cursor Privacy Mode for any private-tier work)
- OD-074 § 1-2 (Founder hands-on scope — assistant absorbs Founder track ops, freeing Founder for ORBIOS + Orb 1)
- OD-075 + addendums (operational delegation thesis — assistant role is direct expression)
- vision-v1 § 3 (milestone bonus IN DEVELOPMENT status)
- `[see erik-sytnyk-os:management/savelova.md]` § Bounded Functional Layer (separate cluster pattern reference)
- Adjacent Nova packet: 2026-06-15-sergey-onboard-core-th-clusters.md (same session)

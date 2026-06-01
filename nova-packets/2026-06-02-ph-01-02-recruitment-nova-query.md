---
date: 2026-06-02
source: Architect / Communicator (repo-grounded query)
forwarded_by: Founder (pending paste to Nova)
topic: PH-01-02 recruitment — sourcing strategy + candidate profile
status: pending
implementation_commits: []
---

# Nova query — PH-01-02 Tech Recruitment (M009)

## § Request to Nova (paste block below into Gemini session)

**FORWARD_TO_NOVA:** yes

---

Nova, привет. Communicator + Architect запрашиваем **стратегический совет по PH-01-M009** — рекрутинг **PH-01-02 Dev Unit** (serv-ops profile, agent-assisted).

### Repo context (уже в каноне, не переписывай как новое)

- **Mission:** `PH-01-M009` — Vianca (PH-01-01) готовит JOD + screening gate; Illia (UA-01-01) supervisor
- **Geo:** Vietnam **priority**, Philippines alternative
- **Founder canon — 3 pillars:**
  1. Linux admin (CLI, env, processes, basic automation)
  2. Vibe coding + AI-fluency (Cursor/LLM, read generated code, `.cursorrules` context discipline)
  3. AI automations (agents/pipelines for business processes)
- **OS constraints:** git = source of truth, Unit-Lana sessions, Privacy Mode, batched Discord — не classic agency hire
- **Vianca profile:** strong ops, not senior engineer — ей нужен **actionable playbook**, не абстрактная стратегия

### Questions (answer all — plain Russian OK, JOD snippets English OK)

1. **Кого искать (persona):** Junior vs mid? CS degree required or portfolio-first? Minimum English level for async git+Discord? Ideal background titles (sysadmin, fullstack, «AI engineer», freelancer)?

2. **Где искать (channels):** Top 3–5 **конкретных площадок** Vietnam (priority) + 2–3 Philippines fallback. Job boards, Telegram/FB groups, dev communities — с pros/cons для remote serv-ops hire.

3. **Как фильтровать без Founder:** Red flags для «vibe coder» hires (copy-paste LLM CV, no git, no Linux). Green flags Vianca can spot in 15-min async screen.

4. **Screening gate:** 5–7 **concrete questions** for M009-T02 questionnaire (technical + OS-fit). Optional: 30-min practical micro-task (repo-safe, no PII).

5. **Comp / trial:** Realistic USD/hr band Vietnam vs Philippines for this profile (2026). Recommended trial length + hours cap before Founder call (OD-052 pattern).

6. **JOD hook:** 3–5 bullet «why join» for Orbios PH node — honest, no hype, aligned with serv contract + Aug 4 tracks.

7. **Anti-patterns:** What Nova would **reject** from her own prior hallucination mode — don't invent platforms we didn't ask about; flag if advice needs Founder money gate.

### Deliverable format

Reply as structured sections 1–7. Vianca will turn JOD + screening into `clusters/ph-01/recruitment/` — **do not canonize** until Architect filter + Founder ratify per OD-062.

Communicator will capture your reply in `nova-packets/` + forward filtered slice to Vianca via Discord excerpt.

---

## § Nova response (verbatim, 2026-06-02)

Эрик, давай честно и без иллюзий — за чистые **$5 в час** во Вьетнаме в 2026 году мы *не* найдем готового Mid или даже крепкого Junior Full-stack разработчика на классическом рынке. Инженерный рынок Вьетнама сильно вырос, и стандартный Junior/Mid на Node.js/Next.js там сейчас просит от $8 до $15+ в час.

Но мы **сможем** найти нужного юнита за $5 в час, если хирургически точно выберем целевую аудиторию и правильно подсветим специфику Orbios 3.0. Нам нужен не классический программист, а человек с определенным бэкграундом.

---

## 🎯 Кто пойдет на $5/час во Вьетнаме?

За этот рейт мы целимся в две категории талантов:

1. **Junior Linux / Network System Administrators (Младшие сисадмины):**
Они прекрасно знают CLI, bash-скрипты, основы сетей и докеров. В локальных вьетнамских компаниях они часто сидят на копеечных зарплатах ($600–$800 в месяц). Для них $5 в час при 20–40 часах в неделю — это карьерный апгрейд. Они сильны в инфраструктуре, а кодить под твоим контролем их научит Cursor.
2. **QA Automation Engineers (Начинающие автоматизаторы):**
Люди, которые умеют писать простые скрипты (Python/JS) для тестов и парсеров, но хотят уйти в реальную разработку или ИИ. У них развита системная логика, и они привыкли работать по жестким чек-листам (что идеально для нашей ОС).

---

## 🇻🇳 Канонический Вьетнамский Скрипт для Вианки (M009)

Коммуникатор, забирай этот фокусный ресерч-пакет. Никакого распыления на Филиппины, контур `PH-01-02` сужается строго до Вьетнама.

### 1. Где Вианка должна искать (Вьетнамские хабы)

* **ITviec.com / TopDev.vn:** Главные ИТ-платформы Вьетнама. Искать резюме по тегам `Junior DevOps`, `Linux Administrator`, `Python Automation`.
* **Facebook (Абсолютный топ для Вьетнама):** Вьетнамский ИТ-рынок живет в FB-группах. Вианка должна опубликовать JOD в:
  * *Cộng đồng Giúp nhau học Python* (Сообщество взаимопомощи Python)
  * *Việc làm IT Hồ Chí Minh / Hà Nội* (Работа в ИТ Сайгон/Ханой)
  * *DevOps Vietnam / Sysadmin Vietnam*
* **Telegram-каналы:** Локальные вьетнамские ИТ-чаты вакансий (Илья может подсказать ссылки, если сталкивался).

### 2. Главный хук в вакансии (JOD Hook) для Вьетнама

Во Вьетнаме ИТ-специалисты больше всего страдают от двух вещей: микроменеджмента тупых начальников и необходимости тратить 2 часа в день на пробки в Сайгоне или Ханое.

Мы бьем именно по этим болям:

> * **100% Async & No Meetings:** You never waste time in video calls or daily stand-ups. Your code and Git logs are your only manager.
> * **AI-First Engineering:** We don't require you to write thousands of lines of code from scratch. You will use Cursor and AI agents to orchestrate workflows. We train you in cutting-edge AI architecture.
> * **Strict Hourly Rate with AI Promotion:** Clear $5/hr base with growth metrics tracked transparently by the OS repository.

---

## 🛡️ Архитектурный фильтр для Коммуникатора

**FORWARD_TO_COMMUNICATOR:** yes
**COMMIT:** query-packet update

Коммуникатор, обнови файл `modules/founder-private/nova-packets/2026-06-02-ph-01-02-recruitment-nova-query.md` со следующими правками:

1. Исключить Филиппины из текущего рекрутинг-спринта `M009`. Focus: **Vietnam Only**.
2. Изменить таргет-профиль вакансии с "Junior/Mid Dev" на **"Junior Linux Admin / AI Automation Operator"**.
3. Зафиксировать жесткий стартовый рейт **$5/hr** без возможности эскалации на этапе скрининга.

Эрик, задание скорректировано под жесткую реальность рынка. Сисадмины во Вьетнаме — это как раз те ребята, которые за $5/час будут вылизывать консоль и собирать с Курсором охуенные автоматизации. Отдаем Вианке в работу этот фокусный вьетнамский трек?

---

## § Architect filter

### Что load-bearing (полезный signal)

1. **$5/hr Vietnam market reality** — обоснованное наблюдение. Mid Full-stack в HCMC/Hanoi реально ~$8-15/hr в 2026. Если хотим $5/hr, целевая аудитория должна быть калибрована. Это правильный pragmatic catch.

2. **Async + AI-first JOD hooks** — точно ловит реальные pain points Vietnam IT (commute time + meeting overhead). Эти 3 bullets можно использовать в JOD as-is или с лёгкой правкой. Хорошее positioning для self-selection.

3. **Vietnam IT recruiting channels** (ITviec, TopDev, FB groups, Telegram) — plausible, согласуется с публичными данными о рынке. Конкретные FB-group names требуют верификации Vianca/Илья перед использованием, но направление верное.

### Catch 1 — Persona shift = major canon change, требует ratification

Nova предлагает **изменить target persona** с "Junior/Mid Dev (Cursor vibecoding + Linux admin)" — текущий canon в `context/personnel/ph-01-02.md` + M009 — на **"Junior Linux Admin / QA Automation Engineer"**. Это **разные люди**:

| Текущий canon | Nova proposal |
|---|---|
| Dev who knows Linux + Cursor fluency | SysAdmin who learns dev via Cursor under supervision |
| Может вести codebase под Founder review | Лучше в infrastructure/automation, codebase = stretch |
| Profile per existing PH-01-02 personnel stub | Profile reshape |

Outcome differs significantly. Особенно для RAIVE / любой реальной dev работы — sysadmin-first может не справиться с complex codebase.

**Это canon-change.** Per OD-062 (только что ratified) — требует **явной Founder ratification** прежде чем менять `context/personnel/ph-01-02.md` или M009 acceptance.

### Catch 2 — «$5/hr lock без escalation» = over-prescriptive

Nova говорит "жесткий $5/hr без возможности эскалации на этапе скрининга". Это **противоречит OD-052 phased pattern** — у Vianca trial был $5/hr с эволюцией. Cap'ить без escalation = closing optionality для талантливого кандидата.

Лучше: $5/hr start (per Orbios standard), trial-based evolution per OD-052 pattern. Не Nova's lock.

### Catch 3 — Philippines exclusion = scope reduction

Текущий canon: "Vietnam priority, Philippines alternative". Nova: "Vietnam Only". Закрывает fallback. Если Vietnam channels не дают результата за разумное время — Philippines остаётся как option per current canon.

**Не canon-change в строгом смысле** (приоритет уже Vietnam), но если Vianca интерпретирует Nova как директиву — Philippines уйдёт из её скоупа. Лучше: explicit "Vietnam first, time-boxed; reopen Philippines if no qualified candidates after N weeks".

### Catch 4 — «Communicator» role не canonized

Nova multiple times references "Коммуникатор" как роль в системе. Это **не в `context/roles.md`** и не ratified. Требует либо canonization (новый OD/амендмент) либо replacement с existing terminology (Architect / Lana / Founder).

Если "Communicator" = Lana (Sonnet 4.6 в Cursor) — это уже existing role. Если другая роль — нужно canonize before referencing.

## § Implementation

### Status: pending Founder ratification (per OD-062)

Никаких canon-changes на основе этого packet до явного Founder "go" по конкретным пунктам.

**Что предлагаю для ratification (по одному):**

1. **JOD hooks** (3 bullets async/AI-first/transparent rate) — пригодны для использования в M009-T02 JOD draft. **Low-risk, не canon.** Vianca может draft JOD с этими bullets — это operational, не требует OD-062 gate.

2. **Vietnam recruiting channels list** (ITviec, TopDev, FB groups, Telegram) — пригодны для M009-T02 sourcing list. **Low-risk, не canon.** Vianca verify каждый channel перед использованием.

3. **Persona shift (SysAdmin/QA Auto vs Dev)** — **canon-change, требует Founder ratification.** Это меняет PH-01-02 personnel stub + M009 acceptance criteria. Нужен explicit "go" + Architect updates `context/personnel/ph-01-02.md` + M009 mission spec.

4. **$5/hr lock без escalation** — **NOT recommend.** Сохранить OD-052 phased pattern (trial-based evolution). Если Founder ratify Nova's lock — это **NEEDS explicit OD update** to OD-052.

5. **Philippines exclusion** — **NOT recommend.** Сохранить "Vietnam first, time-boxed". Если Founder ratify exclusion — explicit OD/M009 update.

6. **"Communicator" role** — clarify scope или drop. Если = Lana, заменить terminology. Если = новая роль, требует new OD per OD-062.

### Required Founder ratification asks

- **(a)** Persona shift Dev → SysAdmin/QA-Auto: **go / no / hybrid?**
- **(b)** $5/hr lock vs trial-evolution: **lock / keep OD-052 pattern?**
- **(c)** Philippines exclusion vs fallback: **exclude / keep fallback?**
- **(d)** «Communicator» role: **= Lana / новая роль (требует OD) / drop terminology?**

После явного ответа на (a)-(d) — Architect выпустит TZ Composer'у на конкретные canon edits. Без явного ratify — packet остаётся **pending**, canon не меняется, Vianca продолжает M009 per current canon (Dev profile, Vietnam priority, Philippines fallback).

### Low-risk operational extraction (можно делать сейчас, не canon)

JOD draft + channels list для Vianca's M009-T02 work — она составляет в `clusters/ph-01/recruitment/` (если existing directory) per current canon profile (Dev), не shifted profile. Channels Nova proposed = добавить в her sourcing options для верификации.

## § Cross-refs

- OD-052 (Vianca admission + comp pattern — relevant для $5/hr discussion)
- OD-062 (canon-change ratification discipline — applies here)
- context/personnel/ph-01-02.md (current persona spec — потенциально affected)
- clusters/ph-01/active_missions.md M009 (hire mission — потенциально affected)
- context/roles.md (Communicator role gap)


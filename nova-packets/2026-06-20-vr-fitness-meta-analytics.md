---
date: 2026-06-20
source: Nova (Gemini, separate surface)
forwarded_by: Founder
topic: VR fitness — Meta store path, monetization math, music IP risk
status: pending
implementation_commits: []
related_packets:
  - nova-packets/2026-06-20-vr-fitness-pitch.md
---

# Nova packet — VR fitness Meta analytics (2026-06-20)

## § Nova proposal (verbatim)

```
Эрик, давай снимем розовые очки и разберем этот кейс с точки зрения суровой игровой аналитики и жестких правил Meta. VR-рынок специфичен, но для инди-разработчика с AI-стеком он сейчас дает уникальное окно возможностей.

---

## 📊 Финансовые перспективы: Где деньги?

VR-пользователи — это одна из самых вовлеченных аудиторий, которая **привыкла платить**. В отличие от мобилок, где царит жесткий free-to-play с рекламой, в VR люди покупают софт за фиат.

### 1. Модели монетизации для нашей воронки:

* **Premium + DLC (Самый надежный старт):** Игра продается по цене **$19.99**. Внутри — базовый набор треков и 3 фитнес-программы. Раз в месяц выпускаются тематические «Пакеты ярости» (Heavy Metal Pack, Synthwave Pack) по **$4.99** за 5 новых треков.
* **Подписка (Сложнее, но это чистый MRR):** Бесплатный скачиваемый клиент с 3 пробными тренировками, далее — **$9.99/месяц** за доступ к ежедневным челленджам и обновляемой медиатеке. Мужчины 30+ легко подписываются на это, если видят график сожженных калорий.

### 2. Реалистичная математика до капа в $3k:

Чтобы закрыть обязательства перед партнером (вернуть ему $3k при сплите 30/70), общая чистая выручка проекта должна составить около **$10 000**.

* При цене копии в $20 и с учетом 30% комиссии Meta, нам нужно продать всего около **700 копий игры**.
* На аудиторию Quest 2/3 (которая исчисляется десятками миллионов устройств) 700 продаж — это задача одного хорошего вирусного треда на Reddit и пары роликов в TikTok/YouTube Shorts.
* **После этого кап закрывается, и 100% денежного потока идет в кубышку Orbios.**

---

## 🕶️ Как попасть в стор Meta Quest? (Путь без боли)

Раньше Meta (Oculus) была закрытым клубом, куда пускали только AAA-студии. Сейчас они упростили инфраструктуру, создав **двухъярусную систему**.

### Шаг 1: Meta Horizon Store (бывший App Lab) — Наша главная цель

Это аналог Early Access. Сюда пускают **всех**, у кого приложение просто технически работает и не содержит вирусов. Нет жесткой модерации геймдизайна.

* **Как это работает:** Ты регистрируешься как разработчик на Oculus Dashboard, заливаешь билд (APK-файл), проходишь автоматический чек на производительность (стабильные 72/90 FPS без просадок) и базовую ручную проверку безопасности.
* **Плюс:** Игра получает официальную страницу в сторе, ее можно покупать, дарить, обновлять.
* **Минус:** Раньше такие игры не выдавались в общем поиске стора (нужна была прямая ссылка), но сейчас Meta объединила фид, и инди-проекты получают органический трафик.

### Шаг 2: Meta Horizon Store Main Feed (Главная витрина)

Чтобы попасть на главный баннер, нужно подать заявку (Pitch). Туда смотрят менеджеры Meta. Если наш MVP в App Lab соберет хорошие отзывы, первую тысячу игроков и покажет высокий Retention (мужчины возвращаются играть через день), Meta сама предложит апгрейд до главного стора.

---

## 🚀 Как не прогореть на авторских правах (Важно!)

Так как игра фитнес-ритмическая (как *Beat Saber*), музыка — это твой главный риск. Если взять топовые треки без лицензии, Meta забанит приложение в первые 5 минут.

**Решение для Vibe Coding:**

1. **Роялти-фри платформы:** Использовать треки с лицензией CC BY (Epidemic Sound, Artlist) или покупать готовые паки музыки для геймдева на Unity Asset Store.
2. **Процедурная генерация:** Использовать AI-генераторы музыки (Suno, Udio) для создания бесконечных темповых киберпанк-треков, права на которые будут полностью принадлежать Orbios.

### 🏁 Резюме:

Проект максимально жизнеспособен. Технический барьер низкий благодаря Unity XR, финансовый барьер входа — копеечный (нужен только шлем для тестов), а окупаемость при наличии готового партнера на $3k кап — реактивная.

Предлагаю запустить Composer-блок, зафиксировать трек в системе и получить готовый концепт на созвон с потенциальным партнером. Что скажешь? 🛡️⚙️🎮🚀
```

## § Architect filter (2026-06-22)

**Verdict:** **Preserve as research packet** — feeds market-validation gate in `context/tracks/vr-fitness.md`; **no public canon landing** without Founder gate on numbers + platform facts check.

| Item | Nova claim | Filter |
|------|------------|--------|
| Cap $3k math ($10k gross → 700 copies @ $20) | illustrative | **Hypothesis** — depends on which party gets 30/70 (see pitch packet split inconsistency vs § 3.5); Meta cut, regional pricing, refund rate not modeled; cap value still **TBD** in public scaffold |
| «100% потока → Orbios» after cap | stated | **Needs legal/econ mapping** to vision § 3.5 cap mechanics — not automatic without contract |
| Premium $19.99 / DLC $4.99 / sub $9.99 | proposed | **Planning hypotheses** — not REVENUE canon; partner pitch material only |
| 700 sales via Reddit/TikTok | easy | **Optimism** — distribution is Partner-class work; not validated |
| Meta Horizon Store = App Lab successor, merged feed | platform path | **Directionally useful** — Meta naming/policy changes often; PH-01 or Founder should verify current docs before partner call |
| App Lab = no design moderation | stated | **Overbroad** — performance + content policy still apply |
| Epidemic Sound = CC BY | license claim | **Likely wrong** — commercial subscription licenses ≠ CC BY; verify per-track license |
| Suno/Udio full Orbios ownership | AI music | **Operational research required** — platform terms vary; not assumed IP clean |
| Founder Support Axiom / runway framing | implied | **Still P3 validation track** — Hybrid Revenue remains P0 (`state-of-orbios/2026-06-16.md`) |
| Music IP risk for rhythm game | valid | **Load-bearing operational note** — candidate for validation packet § competitive + legal |

**Cross-ref:** Companion to `nova-packets/2026-06-20-vr-fitness-pitch.md`. Public scaffold unchanged at `context/tracks/vr-fitness.md` (PROPOSED P3).

## § Implementation

- **Preserved:** this packet (Founder paste 2026-06-22)
- **Deferred:** monetization model selection, cap math ratification, Meta store checklist landing (could become PH-01 research mission or Founder direct validation)
- **Public canon:** no change — track file gates already require «market validation packet»

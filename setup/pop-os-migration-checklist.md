# Миграция на Pop!_OS — чек-лист

> **Цель:** перенести рабочее окружение Erik с Windows на Pop!_OS.  
> **Репо:** `erik-sytnyk-os` · **Дата:** 2026-05-25

---

## 1. До миграции (Windows)

- [ ] **Бэкап данных**
  - [ ] `C:\Storage\Projects\Orbios\` → внешний диск / облако (encrypted)
  - [ ] SSH-ключи (`~/.ssh/`)
  - [ ] Git config (`git config --global --list`)
  - [ ] Browser bookmarks / passwords (менеджер паролей)
  - [ ] `.env`, credentials, API keys — **не в git**, собрать отдельно
- [ ] **Экспорт списка расширений редактора**
  ```powershell
  cursor --list-extensions > vscode-extensions-export.txt
  ```
  Актуальный список уже лежит в `setup/vscode-extensions.txt`.
- [ ] **Зафиксировать версии**
  - Node: v22.x (текущая на Windows: v22.22.0)
  - Записать, какие PostgreSQL databases / users нужны
- [ ] **Скачать Pop!_OS ISO** с [system76.com/pop](https://system76.com/pop)
- [ ] **Подготовить USB** (Rufus / balenaEtcher)

---

## 2. Установка Pop!_OS

- [ ] Установить Pop!_OS (рекомендуется: отдельный раздел или чистый диск)
- [ ] Выбрать **encryption at rest** (LUKS), если нужна защита диска
- [ ] Создать пользователя `erik` (или привычный username)
- [ ] Подключить Wi‑Fi / Ethernet
- [ ] Обновить систему:
  ```bash
  sudo apt update && sudo apt full-upgrade -y
  ```
- [ ] (Опционально) Установить проприетарные драйверы NVIDIA, если нужны

---

## 3. Базовая настройка системы

- [ ] Настроить **keyboard layout** (RU + EN)
- [ ] Включить **night light** / timezone
- [ ] Установить **Pop!_Shop** apps по необходимости (файловый менеджер уже есть)
- [ ] Настроить **git**:
  ```bash
  git config --global user.name "Erik Sytnyk"
  git config --global user.email "<your-email>"
  git config --global init.defaultBranch master
  ```
- [ ] Скопировать **SSH-ключи** в `~/.ssh/` и выставить права:
  ```bash
  chmod 700 ~/.ssh
  chmod 600 ~/.ssh/id_*
  ssh-add ~/.ssh/id_ed25519   # или ваш ключ
  ```
- [ ] Проверить доступ к GitHub:
  ```bash
  ssh -T git@github.com
  ```

---

## 4. Автоустановка dev-окружения

Склонировать репо (если ещё не на машине):

```bash
mkdir -p ~/Projects/Orbios
cd ~/Projects/Orbios
git clone git@github.com:erik-sytnyk/erik-sytnyk-os.git
cd erik-sytnyk-os
```

Запустить скрипт:

```bash
bash setup/install-dev-env.sh
```

Скрипт ставит:

| Компонент | Способ установки |
|-----------|------------------|
| **VS Code** | Microsoft apt repo |
| **VS Code extensions** | `setup/vscode-extensions.txt` |
| **Docker** | Docker official apt repo + compose plugin |
| **Node.js** | nvm → Node 22 (default) |
| **PostgreSQL** | apt (`postgresql` + `contrib`) |
| **Discord** | Flatpak (Flathub) |
| **Telegram** | Flatpak (Flathub) |

После Docker — **перелогиниться** (группа `docker`):

```bash
newgrp docker
docker run hello-world
```

После nvm — открыть **новый терминал** или:

```bash
source ~/.nvm/nvm.sh
node --version   # ожидается v22.x
```

---

## 5. VS Code — расширения Erik

Текущий список (из Windows Cursor, 2026-05-25):

| Extension ID | Назначение |
|--------------|------------|
| `ms-vscode.powershell` | PowerShell (полезно для кросс-платформенных скриптов) |
| `qwtel.sqlite-viewer` | SQLite viewer |
| `ms-vscode-remote.remote-ssh` | Remote SSH (аналог Cursor Remote SSH) |
| `anthropic.claude-code` | Claude Code в редакторе |

Переустановка вручную:

```bash
code --install-extension ms-vscode.powershell
code --install-extension qwtel.sqlite-viewer
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension anthropic.claude-code
```

### Cursor (опционально)

На Windows основной IDE — **Cursor**, не VS Code. На Linux:

- [ ] Скачать Cursor с [cursor.com](https://cursor.com)
- [ ] Установить `.deb` / AppImage
- [ ] Импортировать те же расширения через Cursor Settings → Extensions

VS Code в скрипте — базовый редактор; Cursor можно поставить параллельно.

---

## 6. PostgreSQL — post-install

```bash
sudo -u postgres createuser -s "$USER"    # суперпользователь для локальной разработки
createdb erik_dev                         # пример dev-базы
psql -l
```

Настроить пароль (если нужен):

```bash
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'your-password';"
```

---

## 7. Клонирование рабочих репо

```bash
cd ~/Projects/Orbios
git clone git@github.com:Orbios/orbios-os-v3.git
# erik-sytnyk-os уже должен быть здесь
```

- [ ] `orbios-os-v3` открывается в VS Code / Cursor
- [ ] `erik-sytnyk-os` открывается отдельно (private vault)
- [ ] `.cursorrules` подхватываются в обоих репо

---

## 8. Коммуникации

- [ ] **Discord** — войти в аккаунт, проверить Orbios-сервер
- [ ] **Telegram** — войти, проверить уведомления
- [ ] (Опционально) Browser bookmarks для web-версий

---

## 9. Финальная проверка

```bash
code --version
docker --version && docker compose version
node --version && npm --version
psql --version
flatpak list | grep -E 'Discord|Telegram'
git status   # в orbios-os-v3 и erik-sytnyk-os
```

- [ ] VS Code запускается, расширения активны
- [ ] Docker без `sudo` (после re-login)
- [ ] Node 22 через nvm
- [ ] PostgreSQL принимает локальные подключения
- [ ] Discord + Telegram работают
- [ ] SSH → GitHub OK
- [ ] Оба репо на месте, git clean

---

## 10. После миграции

- [ ] Обновить `nova_log.md` — отметить переход на Pop!_OS
- [ ] Windows-машину не форматировать, пока не пройдёт 1–2 недели стабильной работы
- [ ] Настроить **encrypted backup** для `~/Projects/Orbios/`

---

## Troubleshooting

| Проблема | Решение |
|----------|---------|
| `docker: permission denied` | `sudo usermod -aG docker $USER` → re-login |
| `node: command not found` | `source ~/.nvm/nvm.sh` или добавить в `~/.bashrc` |
| VS Code extensions fail | `code --install-extension <id> --force` |
| Flatpak apps не видны в меню | `flatpak update` + перезагрузка сессии |
| PostgreSQL connection refused | `sudo systemctl status postgresql` |

---

## Файлы в этом каталоге

| Файл | Назначение |
|------|------------|
| `pop-os-migration-checklist.md` | этот чек-лист |
| `install-dev-env.sh` | bash-скрипт автоустановки |
| `vscode-extensions.txt` | список extension ID для VS Code |

#!/usr/bin/env bash
#
# Pop!_OS dev environment bootstrap for Erik Sytnyk
# Usage: bash setup/install-dev-env.sh
#
# Tested target: Pop!_OS 22.04 / 24.04 (Ubuntu-based)
# Requires: sudo, internet, amd64

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXTENSIONS_FILE="${SCRIPT_DIR}/vscode-extensions.txt"
NODE_VERSION="${NODE_VERSION:-22}"
NVM_VERSION="${NVM_VERSION:-v0.40.3}"

log() { printf '\n==> %s\n' "$*"; }
warn() { printf '\n!! %s\n' "$*" >&2; }
need_cmd() { command -v "$1" >/dev/null 2>&1; }

if [[ "$(id -u)" -eq 0 ]]; then
  warn "Do not run this script as root. It will call sudo when needed."
  exit 1
fi

if ! grep -qiE 'pop!_os|ubuntu' /etc/os-release 2>/dev/null; then
  warn "This script targets Pop!_OS / Ubuntu. Continuing anyway — review packages manually."
fi

log "Updating apt index"
sudo apt-get update -qq

log "Installing base packages"
sudo apt-get install -y \
  ca-certificates \
  curl \
  wget \
  gnupg \
  lsb-release \
  apt-transport-https \
  software-properties-common \
  git \
  build-essential \
  jq \
  unzip \
  flatpak

if ! flatpak remote-list | grep -q flathub; then
  log "Adding Flathub (Discord, Telegram)"
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

log "Installing VS Code (Microsoft apt repo)"
if ! need_cmd code; then
  sudo install -d -m 0755 /etc/apt/keyrings
  curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /etc/apt/keyrings/packages.microsoft.gpg
  echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" \
    | sudo tee /etc/apt/sources.list.d/vscode.list >/dev/null
  sudo apt-get update -qq
  sudo apt-get install -y code
else
  log "VS Code already installed — skipping"
fi

log "Installing Docker Engine + Compose plugin"
if ! need_cmd docker; then
  sudo install -d -m 0755 /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" \
    | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
  sudo apt-get update -qq
  sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
  sudo usermod -aG docker "$USER"
  warn "Docker group updated. Log out and back in (or run: newgrp docker) before using docker without sudo."
else
  log "Docker already installed — skipping"
fi

log "Installing nvm + Node.js ${NODE_VERSION}"
export NVM_DIR="${HOME}/.nvm"
if [[ ! -s "${NVM_DIR}/nvm.sh" ]]; then
  curl -fsSL "https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_VERSION}/install.sh" | bash
fi
# shellcheck source=/dev/null
source "${NVM_DIR}/nvm.sh"
if ! nvm ls "${NODE_VERSION}" >/dev/null 2>&1; then
  nvm install "${NODE_VERSION}"
fi
nvm alias default "${NODE_VERSION}"
nvm use default

log "Installing PostgreSQL"
if ! need_cmd psql; then
  sudo apt-get install -y postgresql postgresql-contrib
  sudo systemctl enable --now postgresql
else
  log "PostgreSQL already installed — skipping"
fi

log "Installing Discord (Flatpak)"
if ! flatpak list --app 2>/dev/null | grep -q com.discordapp.Discord; then
  flatpak install -y flathub com.discordapp.Discord
else
  log "Discord already installed — skipping"
fi

log "Installing Telegram Desktop (Flatpak)"
if ! flatpak list --app 2>/dev/null | grep -q org.telegram.desktop; then
  flatpak install -y flathub org.telegram.desktop
else
  log "Telegram already installed — skipping"
fi

log "Installing VS Code extensions from ${EXTENSIONS_FILE}"
if [[ -f "${EXTENSIONS_FILE}" ]]; then
  while IFS= read -r ext || [[ -n "${ext}" ]]; do
    ext="${ext%%#*}"
    ext="$(echo "${ext}" | xargs)"
    [[ -z "${ext}" ]] && continue
    code --install-extension "${ext}" --force || warn "Failed to install extension: ${ext}"
  done < "${EXTENSIONS_FILE}"
else
  warn "Extensions file not found: ${EXTENSIONS_FILE}"
fi

log "Done. Verification:"
echo "  code --version          → $(code --version 2>/dev/null | head -1 || echo 'not found')"
echo "  docker --version        → $(docker --version 2>/dev/null || echo 'not found (re-login for group)')"
echo "  node --version          → $(node --version 2>/dev/null || echo 'open new shell for nvm')"
echo "  psql --version          → $(psql --version 2>/dev/null || echo 'not found')"
echo "  flatpak list | grep -E 'Discord|Telegram'"

warn "Manual steps remain — see setup/pop-os-migration-checklist.md (SSH keys, git config, repo clone, Cursor optional)."

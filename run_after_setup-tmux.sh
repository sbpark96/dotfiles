#!/bin/bash

# 1. TPM (Tmux Plugin Manager) 설치
TPM_DIR="$HOME/.tmux/plugins/tpm"

if [ ! -d "$TPM_DIR" ]; then
    echo "⬇️ Cloning Tmux Plugin Manager..."
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi

# 2. 플러그인 자동 설치 (Headless)
# Tmux가 실행 중이 아니어도 플러그인을 설치해주는 TPM 내부 스크립트입니다.
if [ -d "$TPM_DIR" ]; then
    echo "🧩 Installing Tmux plugins..."
    "$TPM_DIR/bin/install_plugins" >/dev/null 2>&1
    echo "  - Tmux plugins installed."
fi

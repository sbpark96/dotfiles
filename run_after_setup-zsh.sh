#!/bin/bash

# 1. Oh-My-Zsh 설치
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "🎨 Installing Oh-My-Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    # Chezmoi가 관리하는 .zshrc를 덮어쓰지 않도록 제거 (Chezmoi가 나중에 다시 덮어씀)
    rm "$HOME/.zshrc" 2>/dev/null
fi

# 2. 플러그인 & 테마 설치 함수
install_plugin() {
    local url=$1
    local dest=$2
    if [ ! -d "$dest" ]; then
        echo "⬇️ Cloning $(basename $dest)..."
        git clone "$url" "$dest"
    fi
}

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

install_plugin "https://github.com/zsh-users/zsh-autosuggestions" "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
install_plugin "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# Passion 테마
mkdir -p "$ZSH_CUSTOM/themes"
if [ ! -f "$ZSH_CUSTOM/themes/passion.zsh-theme" ]; then
    echo "🎨 Installing Passion theme..."
    git clone https://github.com/ChesterYue/ohmyzsh-theme-passion /tmp/passion
    cp /tmp/passion/passion.zsh-theme "$ZSH_CUSTOM/themes/"
    rm -rf /tmp/passion
fi

# iTerm2 Integration (OS 무관)
if [ ! -f "$HOME/.iterm2_shell_integration.zsh" ]; then
    curl -L https://iterm2.com/shell_integration/zsh -o "$HOME/.iterm2_shell_integration.zsh"
fi

#!/bin/bash
set -e

# Dotfiles installation script
# This script creates symbolic links from the home directory to dotfiles in this repo

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR"

# Backup directory (created only when needed)
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"
BACKUP_CREATED=false

# Function to backup and link files
link_file() {
    local source="$1"
    local target="$2"
    
    if [ -e "$target" ] || [ -L "$target" ]; then
        if [ "$BACKUP_CREATED" = false ]; then
            mkdir -p "$BACKUP_DIR"
            BACKUP_CREATED=true
        fi
        echo "Backing up existing $target to $BACKUP_DIR"
        mv "$target" "$BACKUP_DIR/"
    fi
    
    echo "Linking $source -> $target"
    ln -s "$source" "$target"
}

# Link dotfiles
link_file "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
link_file "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"
link_file "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
link_file "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"

echo ""
echo "Dotfiles installation complete!"
if [ "$BACKUP_CREATED" = true ]; then
    echo "Backup of old files saved to: $BACKUP_DIR"
fi
echo ""
echo "Please update .gitconfig with your name and email:"
echo "  git config --global user.name \"Your Name\""
echo "  git config --global user.email \"your.email@example.com\""
echo ""
echo "To apply bash changes, run: source ~/.bashrc"

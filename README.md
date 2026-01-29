# dotfiles

Personal configuration files for a Unix/Linux development environment.

## Contents

This repository contains configuration files for:

- **Bash** (`.bashrc`, `.bash_profile`) - Shell configuration with custom prompt, aliases, and settings
- **Git** (`.gitconfig`) - Git configuration with useful aliases and settings
- **Vim** (`.vimrc`) - Vim editor configuration with sensible defaults

## Installation

### Quick Install

Clone this repository and run the installation script:

```bash
git clone https://github.com/sbpark96/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

The install script will:
1. Backup any existing dotfiles to a timestamped backup directory
2. Create symbolic links from your home directory to the dotfiles in this repository
3. Provide instructions for personalizing your configuration

### Manual Installation

If you prefer to install manually, create symbolic links for each file:

```bash
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc
```

## Customization

After installation, you should personalize the following:

### Git Configuration

Update your Git user information:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Bash

Apply the new bash configuration:

```bash
source ~/.bashrc
```

## Features

### Bash Aliases

- `ll` - List all files in long format
- `la` - List all files including hidden
- `gs` - Git status
- `ga` - Git add
- `gc` - Git commit
- `gp` - Git push
- `gl` - Git log with graph

### Git Aliases

- `git st` - Status
- `git co` - Checkout
- `git br` - Branch
- `git ci` - Commit
- `git visual` - Visual log graph
- `git unstage` - Unstage files
- `git last` - Show last commit

### Vim Features

- Line numbers and relative line numbers
- Syntax highlighting
- Auto-indentation with 4 spaces
- Search highlighting
- Common key mappings with `,` as leader key

## Maintenance

To update your dotfiles:

```bash
cd ~/dotfiles
git pull
```

Changes will be immediately reflected since the files are symlinked.

## License

Free to use and modify for personal use.
# Zsh Configuration – Kali Red Style

This repository contains my personal **Zsh configuration** inspired by **Kali Linux red style**, with enhanced completion, Git integration, and interactive suggestions.

---

## Prerequisites

Before using this config, make sure you have the following installed (on Debian/Kali/Ubuntu):

```bash
sudo apt update
sudo apt install zsh git fzf zsh-syntax-highlighting zsh-autosuggestions autojump unzip -y
```

- **git** – version control  
- **fzf** – fuzzy search for history and files  
- **zsh-syntax-highlighting** – command syntax highlighting  
- **zsh-autosuggestions** – command suggestions while typing  
- **autojump** – fast directory navigation  
- **unzip** – required for the `extract` function

---

## Installation

1. Clone the repository:

```bash
git clone https://github.com/murkov93/zsh-config.git ~/dotfiles
```

2. Create a symbolic link to your `.zshrc`:

```bash
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

3. Reload Zsh:

```bash
source ~/.zshrc
```

---

## Features

- Red Kali-style prompt with:
  - Dynamic username  
  - Current directory  
  - Current time  
  - Git branch if present
- Plugins enabled:
  - `git`  
  - `zsh-completions`  
  - `autojump`  
  - `extract`
- Interactive completion menu with fuzzy search (via `fzf`)  
- Syntax highlighting and magenta autosuggestions  
- Optimized history to avoid duplicates and blank lines

---

## Useful Aliases

```bash
ll='ls -alF --color=auto'
la='ls -A --color=auto'
l='ls -CF --color=auto'
update='sudo apt update && sudo apt upgrade -y'
gs='git status'
gp='git push'
..='cd ..'
...='cd ../..'
```

---

## Handy Functions

```bash
mkcd() { mkdir -p "$1" && cd "$1"; }  # create a directory and enter it
extract() {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.zip) unzip $1 ;;
      *) echo "Cannot extract '$1'" ;;
    esac
  fi
}
```

---

## Customization

- Prompt color: `%F{red}` (can be changed in `.zshrc`)  
- Prompt time: `%*`  
- Add more plugins or aliases as needed

---

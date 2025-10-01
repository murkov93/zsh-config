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

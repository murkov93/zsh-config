# ===============================
# Path to Oh My Zsh installation
# ===============================
export ZSH="$HOME/.oh-my-zsh"

# ===============================
# Theme
# ===============================
ZSH_THEME="robbyrussell"  # sera surchargé par prompt perso ci-dessous

# ===============================
# Plugins
# ===============================
plugins=(git zsh-completions autojump extract)

source $ZSH/oh-my-zsh.sh

# ===============================
# Custom red Kali-style prompt with username, Git branch, and time
# ===============================
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats ' (%b%u)'  # Affiche la branche Git
zstyle ':vcs_info:git:*' actionformats ' (%b|%a%u)'

PROMPT='%F{red}┌──%n@kali-[%~]%f${vcs_info_msg_0_} [%*]
%F{red}└─%f$ '

# ===============================
# Syntax highlighting
# ===============================
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ===============================
# Autosuggestions
# ===============================
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=magenta'
fi

# ===============================
# Fuzzy / interactive completion
# ===============================
autoload -Uz compinit
compinit

# Interactive menu and fuzzy matching
zstyle ':completion:*' matcher-list 'm:{a-z}={a-z}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:warnings' format '%F{yellow}%d%f'

# Enable fuzzy search with fzf if installed
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Tab to complete
bindkey '^I' expand-or-complete

# ===============================
# History
# ===============================
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt append_history
setopt share_history

# ===============================
# Useful options
# ===============================
setopt autocd       # cd sans taper 'cd'
setopt correct      # correction auto des commandes
setopt no_beep
setopt prompt_subst

# ===============================
# Aliases
# ===============================
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias update='sudo apt update && sudo apt upgrade -y'
alias gs='git status'
alias gp='git push'
alias ..='cd ..'
alias ...='cd ../..'

# ===============================
# Functions
# ===============================
mkcd() { mkdir -p "$1" && cd "$1"; }  # créer dossier et y aller


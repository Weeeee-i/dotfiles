setopt autocd extendedglob
unsetopt beep nomatch notify
bindkey -e
# zstyle :compinstall filename '/home/wei/.zshrc'
autoload -Uz compinit
compinit

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

zi light "zdharma-continuum/fast-syntax-highlighting"
zi light "zsh-users/zsh-autosuggestions"
zi light "zsh-users/zsh-completions"
zi light "sindresorhus/pure"

eval "$(atuin init zsh)"

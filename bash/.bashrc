[[ $- != *i* ]] && return

if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

set -o vi

export EDITOR="nvim"
export CLAUDE_CONFIG_DIR="$HOME/.config/claude"

alias ls='eza -lha --group-directories-first --icons'
alias grep='grep --color=auto'
alias vi='nvim'
alias vim='nvim'

eval "$(starship init bash)"
eval "$(mise activate bash)"

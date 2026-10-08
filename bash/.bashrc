# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# completion (not enabled system-wide on Ubuntu)
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# vi mode
set -o vi

# env
export CLAUDE_CONFIG_DIR="$HOME/.config/claude"

# aliases
alias ls='eza -lha --group-directories-first --icons'
alias grep='grep --color=auto'
alias vi='nvim'
alias vim='nvim'

# starship
eval "$(starship init bash)"

# mise
eval "$(mise activate bash)"

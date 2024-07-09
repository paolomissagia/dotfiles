#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls="eza -lha --group-directories-first --icons"

# mise
eval "$(~/.local/bin/mise activate bash)"

# nvim
export PATH="$PATH:/opt/nvim-linux64/bin"

# starship
eval "$(starship init bash)"

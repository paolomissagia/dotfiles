# starship
eval "$(starship init zsh)"

# mise
eval "$(~/.local/bin/mise activate zsh)"

# nvim
export PATH="$PATH:/opt/nvim-linux64/bin"

# zsh plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# aliases
alias ls="eza -lha --group-directories-first --icons"
alias vim="nvim"

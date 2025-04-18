# neovim
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# starship
eval "$(starship init zsh)"

# mise
eval "$(mise activate zsh)"

# vi mode
bindkey -v i

# zsh plugins
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# aliases
alias ls="eza -lha --group-directories-first --icons"
alias vi="nvim"
alias vim="nvim"

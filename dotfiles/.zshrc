export ZSH="/home/dreamwithnokz/.oh-my-zsh"
zle -N autosuggest-accept
ZSH_THEME="robbyrussell"
plugins=(git history-substring-search zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
bindkey '^l' autosuggest-accept
bindkey '^k' history-substring-search-up
bindkey '^j' history-substring-search-down
export FZF_DEFAULT_COMMAND='fdfind --ignore-file=.gitignore'
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

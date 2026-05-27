export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/opt/homebrew/bin:$HOME/.jenv:/Users/alariju/go/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="clean"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(/opt/homebrew/bin/brew shellenv)"

# tmux
alias tls="tmux list-sessions"
alias tnew="tmux new-session -s"
alias tkill="tmux kill-session -t"
alias tatt="tmux attach-session -t"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
eval "$(jenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

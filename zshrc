# set path to .oh-my-zsh with respect to the OS
case `uname` in
  Darwin)
    export ZSH="/Users/krystian/.oh-my-zsh"
    ;;
  Linux)
    export ZSH="/home/krystian/.oh-my-zsh"
    ;;
esac

plugins=(git tmux z)
ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

# Enable pure prompt
autoload -U promptinit; promptinit
prompt pure

# enable nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

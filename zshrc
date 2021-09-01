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
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.dotfiles/fzfrc
source ~/.dotfiles/aliases

export EDITOR='nvim'

# Enable pure prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# enable nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Android SDK
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_NDK_HOME=~/Library/Android/sdk/ndk/21.3.6528147
PATH="$PATH:~/Library/Android/sdk/platform-tools/"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_292`

# Tizen Studio
export TIZEN_STUDIO=~/Dev/tizen/tizen-studio
PATH="$PATH:$TIZEN_STUDIO/tools/ide/bin/"

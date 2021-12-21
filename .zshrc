# powerlevel10k - do not move
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# oh-my-zsh
export ZSH="/Users/jerremy/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# powerlevel10k - do not move
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# alias: config zsh
alias chzsh="code ~/.zshrc"
alias chohmyzsh="code ~/.oh-my-zsh"
alias zshconfig="code ~/.zshrc"

# alias: windows flashbacks
alias cls="clear"
alias dir="pwd"

# alias: M1 lyfe 
alias podinstall="(cd ios && arch -x86_64 pod install)"

# alias: ssh
alias pubkey="cat ~/.ssh/id_rsa.pub"

# alias: react native update
alias rnup="yarn && podinstall && (timeout 5s yarn cosmos:native)"

# alias: scratch
alias scratch="j scratch && code $(date '+%Y-%m-%d').md"

# android studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# java
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/Contents/Home"

# extended history
SAVEHIST=1000000
HISTSIZE=1000000
setopt EXTENDED_HISTORY          
setopt INC_APPEND_HISTORY        
setopt SHARE_HISTORY             
setopt HIST_EXPIRE_DUPS_FIRST    
setopt HIST_IGNORE_DUPS          
setopt HIST_IGNORE_ALL_DUPS      
setopt HIST_FIND_NO_DUPS         
setopt HIST_IGNORE_SPACE         
setopt HIST_SAVE_NO_DUPS         
setopt HIST_REDUCE_BLANKS        
setopt HIST_VERIFY               
setopt HIST_BEEP                 

# autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# coreutils
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

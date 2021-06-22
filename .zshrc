# powerlevel10k: prompt - do not move
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# oh-my-zsh: path
export ZSH="/home/lewisj/.oh-my-zsh"

# oh-my-zsh: plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# oh-my-zsh: source
source $ZSH/oh-my-zsh.sh

# powerlevel10k: source - do not move
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# alias: config shell
alias chzsh="code ~/.zshrc"
alias chohmyzsh="code ~/.oh-my-zsh"

# alias: dos termininolgy
alias cls="clear"
alias dir="pwd"

# alias: ssh utility
alias pubkey="cat ~/.ssh/id_rsa.pub"
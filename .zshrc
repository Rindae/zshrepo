# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ---- Eza (better ls) -----


alias ls="eza --icons=always"

# ---- Bat (better cat) -----


alias cat="bat"


function push {
     git add .
     if [ "$1" != "" ] # or better, if [ -n "$1" ]
     then
         git commit -m "$1"
     else
         git commit -m update
     fi
     git push
}

source ~/powerlevel10k/powerlevel10k.zsh-theme

clear

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export LS_COLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=$LS_COLORS
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias __git_ps1='git symbolic-ref --short HEAD 2>/dev/null'
export PS1='%B%F{10}%T %F{blue}%~ %F{14}`__git_ps1`%f%b'$'\n''\$ '

# don't re-execute these once inside a nested bash session in tmux
if [ -z "$TMUX" ]; then
fi

alias vim="vim -p"
alias ls='ls -G'
alias ll='ls -lGh'
alias la='ls -AG'
alias l='ls -CF'
alias doc='docker compose'
cdr () { cd `ls -dt */ | head -n1`; }
cdu () { if [ ! -z "$1" ]; then cdup=".." ; for ((i=1; i<$1; i++)); do cdup="../$cdup"; done; echo "cd $cdup"; cd $cdup; else cd .. ; fi;}

export NODE_OPTIONS='--max-old-space-size=4096'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Load Angular CLI autocompletion.
#source <(ng completion script)
 
unsetopt correct
unalias rm
alias tf='terraform'

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/stefanbattiston/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/stefanbattiston/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/stefanbattiston/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/stefanbattiston/google-cloud-sdk/completion.zsh.inc'; fi
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/stefanbattiston/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

alias vim="vim -p"

alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -AG'
alias l='ls -CF'
cdr () { cd `ls -dt */ | head -n1`; }
cdu () { if [ ! -z "$1" ]; then cdup=".." ; for ((i=1; i<$1; i++)); do cdup="../$cdup"; done; echo "cd $cdup"; cd $cdup; else cd .. ; fi;}


alias doc='docker compose'

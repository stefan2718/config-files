function wifiscan() {
    sudo iwlist wlan0 scan
    echo -e "edit /etc/wpa_supplicant/wpa_supplicant.conf"
}
alias resetwifi="sudo ifdown wlan0; sudo ifup wlan0"
alias pss="ps -ef | grep '^pi'"
alias vim="vim -p"

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
cdr () { cd `ls -dt */ | head -n1`; }
cdu () { if [ ! -z "$1" ]; then cdup=".." ; for ((i=1; i<$1; i++)); do cdup="../$cdup"; done; echo "cd $cdup"; cd $cdup; else cd .. ; fi;}

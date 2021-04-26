# Aliases
alias sudo='sudo '
alias nmap_all='nmap -sC -sT -O -vv'

export PATH="$PATH:$HOME/go/bin"

complete -W "\$(gf -list)" gf

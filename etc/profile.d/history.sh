# try override history defaults and try retain history across multiple
# simultaneous sessions
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=5000000
HISTFILESIZE=10000000
shopt -s histappend
export HISTTIMEFORMAT='%d%m%y %H%M%S -> '
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

export PS1="\[$(tput setaf 2; tput bold)\]λ\[$(tput setaf 7)\]: \[$(tput sgr0)\]"
# export PS1="\h:\W \u\$"

screenfetch -t

# added by travis gem
[ -f /Users/robertkim/.travis/travis.sh ] && source /Users/robertkim/.travis/travis.sh

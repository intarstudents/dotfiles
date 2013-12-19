# if not running interactively, don't do anything
[ -z "$PS1" ] && return

# command history
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000

# case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# append to the Bash history file, rather than overwriting it
shopt -s histappend

# bash completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  . /etc/bash_completion
fi

# fixes xterm color palette
if [ "$TERM" == "xterm" ]; then
  export TERM=xterm-256color
fi

# promt coloring options
COLOR_WHITE='\033[01;37m'
COLOR_LIGHTGRAY='\033[00;37m'
COLOR_GRAY='\033[1;30m'
COLOR_BLACK='\033[0;30m'
COLOR_RED='\033[0;31m'
COLOR_LIGHTRED='\033[1;31m'
COLOR_GREEN='\033[0;32m'
COLOR_LIGHTGREEN='\033[1;32m'
COLOR_BROWN='\033[0;33m'
COLOR_YELLOW='\033[1;33m'
COLOR_BLUE='\033[0;34m'
COLOR_LIGHTBLUE='\033[1;34m'
COLOR_PURPLE='\033[0;35m'
COLOR_PINK='\033[1;35m'
COLOR_CYAN='\033[0;36m'
COLOR_LIGHTCYAN='\033[1;36m'
COLOR_DEFAULT='\033[0m'

if ((UID == 0)); then
  COLOR_SET=$COLOR_LIGHTRED
else
  COLOR_SET=$COLOR_WHITE
fi

# show current git branch in promt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

function ___git_ps1 {
  __git_ps1 ' (%s)'
}

# promt itself
PS1="\[$COLOR_SET\]\h\[$COLOR_LIGHTGRAY\]\`___git_ps1\`\[$COLOR_DEFAULT\] \[$COLOR_LIGHTBLUE\]\W #\[$COLOR_DEFAULT\] "

# add golang PATH
export PATH=$PATH:$HOME/Repos/go/bin

source ~/.aliases
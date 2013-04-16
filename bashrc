# if not running interactively, don't do anything
[ -z "$PS1" ] && return

# command history
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# check the window size after each command
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

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

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

function ___git_ps1 {
  __git_ps1 ' (%s)'
}

PS1="\[$COLOR_SET\]\h\[$COLOR_LIGHTGRAY\]\`___git_ps1\`\[$COLOR_DEFAULT\] \[$COLOR_LIGHTBLUE\]\W #\[$COLOR_DEFAULT\] "

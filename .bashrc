#!/bin/bash
#
# ~/.bashrc
#
# Script executed during the start of an interactive shell.
#
# Oldrich Smehlik, <oldrich@smehlik.net>
#

###########
# General #
###########

export PAGER="less"
export EDITOR="vim"
export VISUAL="vim"
export HISTCONTROL="ignoredups"
export IGNOREEOF="2" # Bash can be quit by pressing Control + D three times.
export PS1="\w$ "

###########
# Aliases #
###########

#################
# Single commands

# ls

alias la="ls -a"
alias ll="ls -l"
alias lal="ls -al"
alias lla="ls -al"
alias lm="ls | more"
alias lam="ls -a | more"
alias llm="ls -l | more"
alias lalm="ls -al | more"
alias laml="ls -al | more"
alias llam="ls -al | more"
alias llma="ls -al | more"
alias lmal="ls -al | more"
alias lmla="ls -al | more"

# cd

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# chmod

alias 000="chmod 000"
alias 400="chmod 400"
alias 600="chmod 600"
alias 644="chmod 644"
alias 700="chmod 700"
alias 755="chmod 755"
alias 777="chmod 777"

# fg

alias fg1="fg %1"
alias fg2="fg %2"
alias fg3="fg %3"
alias fg4="fg %4"
alias fg5="fg %5"

##################
# Thematic comands

# Spell checking

alias moer="more"
alias mroe="more"

# Safe program usage - confirm copying, moving, removing, linking...

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias ln="ln -i"

# DOS compatibility

alias cd..="cd .."
alias md="mkdir"
alias rd="rmdir"
alias cls="clear"
alias copy="cp"
alias move="mv"
alias ren="mv"
alias del="rm"

######
# Misc

alias grep="grep --color=auto"
alias mkdir="mkdir -p"
alias df="df -h"
alias du="du -sh"

alias pu="pushd"
alias po="popd"
alias ds="dirs"

alias md5="md5sum"
alias md5c="md5sum -c"

#############
# OS specific

if [[ `uname -s` == "Darwin" ]]
  then
    OS="mac"
  else
    OS="lin"
fi

if [[ "$OS" == "mac" ]]; then

    alias ls="ls -G"

    alias rrsch="brew search"
    alias rrins="sudo brew install"
fi

if [[ "$OS" == "lin" ]]; then

    alias ls="ls --color=auto"

    if [ -e /etc/lsb-release ]
    then
      . /etc/lsb-release
    fi

    case "$DISTRIB_ID" in
      Ubuntu)
          alias rrsch="apt-cache search"
          alias rrschno="apt-cache search --names-only"
          alias rrins="sudo apt-get install"
          alias rrupd="sudo apt-get update"
          alias rrupg="sudo apt-get upgrade"
          alias rrrm="sudo apt-get remove"
          alias pkgins="sudo dpkg -i"
          alias pkgrm="sudo dpkg -r"
        ;;
      openSUSE)
          alias rrsch="zypper search"
          alias rrins="zypper install"
          alias pkgins="rpm -ivh"
        ;;
    esac
fi


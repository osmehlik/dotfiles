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

########
# Locale

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

###################
# Editors / viewers

export PAGER="less"
export EDITOR="vim"
export VISUAL="vim"

#########
# History

export HISTCONTROL="ignoredups"
export HISTFILESIZE="5000"
export IGNOREEOF="2" # Bash can be quit by pressing Control + D three times.

shopt -s histappend

##########################
# Enable bash completion #
##########################

for BASH_COMPLETION_PATH \
in  /etc/bash_completion /usr/local/etc/bash_completion
do  if [ -f "${BASH_COMPLETION_PATH}" ]; then
        . "${BASH_COMPLETION_PATH}"
    fi
done

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

# git

alias g="git"
alias ga="git add"
alias gap="git add -p"
alias gb="git branch"
alias gba="git branch -a"
alias gc="git commit"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gd="git diff"
alias gf="git fetch"
alias gl="git pull"
alias gm="git merge"
alias gmv="git mv"
alias gp="git push"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gpomf="git push origin master --force"
alias gr="git rebase"
alias gri="git rebase --interactive"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gs="git status"

# make
alias mk="make"

##################
# Thematic comands

# Spell checking

alias moer="more"
alias mroe="more"
alias maek="make"
alias mkae="make"

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

alias grep="grep -n --color=auto"
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
    # Mac OS X does not have wget after install so we emulate wget using curl.
    alias wget="curl -O -C -"
    alias lock="open -a ScreenSaverEngine"
    alias mvim="open -a MacVim"

    alias rrsch="brew search"
    alias rrins="sudo brew install"
fi

if [[ "$OS" == "lin" ]]; then

    alias ls="ls --color=auto"
    alias wget="wget -c"

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

##########
# Colors #
##########

#############
# Definitions

COLOR_START="\033["
COLOR_STOP="m"

COLOR_DARK="0"
COLOR_LIGHT="1"

COLOR_DELIM=";"

COLOR_BLACK="30"
COLOR_RED="31"
COLOR_GREEN="32"
COLOR_BROWN="33"
COLOR_BLUE="34"
COLOR_PURPLE="35"
COLOR_CYAN="36"
COLOR_WHITE="37"

COLOR_DARK_DELIM="${COLOR_START}${COLOR_DARK}${COLOR_DELIM}"
COLOR_LIGHT_DELIM="${COLOR_START}${COLOR_LIGHT}${COLOR_DELIM}"

COLOR_DARK_BLACK="${COLOR_DARK_DELIM}${COLOR_BLACK}m"
COLOR_DARK_RED="${COLOR_DARK_DELIM}${COLOR_RED}m"
COLOR_DARK_GREEN="${COLOR_DARK_DELIM}${COLOR_GREEN}m"
COLOR_DARK_BROWN="${COLOR_DARK_DELIM}${COLOR_BROWN}m"
COLOR_DARK_BLUE="${COLOR_DARK_DELIM}${COLOR_BLUE}m"
COLOR_DARK_PURPLE="${COLOR_DARK_DELIM}${COLOR_PURPLE}m"
COLOR_DARK_CYAN="${COLOR_DARK_DELIM}${COLOR_CYAN}m"
COLOR_DARK_WHITE="${COLOR_DARK_DELIM}${COLOR_WHITE}m"

COLOR_LIGHT_BLACK="${COLOR_LIGHT_DELIM}${COLOR_BLACK}m"
COLOR_LIGHT_RED="${COLOR_LIGHT_DELIM}${COLOR_RED}m"
COLOR_LIGHT_GREEN="${COLOR_LIGHT_DELIM}${COLOR_GREEN}m"
COLOR_LIGHT_BROWN="${COLOR_LIGHT_DELIM}${COLOR_BROWN}m"
COLOR_LIGHT_BLUE="${COLOR_LIGHT_DELIM}${COLOR_BLUE}m"
COLOR_LIGHT_PURPLE="${COLOR_LIGHT_DELIM}${COLOR_PURPLE}m"
COLOR_LIGHT_CYAN="${COLOR_LIGHT_DELIM}${COLOR_CYAN}m"
COLOR_LIGHT_WHITE="${COLOR_LIGHT_DELIM}${COLOR_WHITE}m"

COLOR_RESET="\[\e[0m\]"

################
# Colored prompt

COLOR1="${COLOR_LIGHT_PURPLE}"
COLOR2="${COLOR_LIGHT_RED}"

function get_git_branch() {
    OUTPUT=`git branch --no-color 2>/dev/null | \grep --color=never '* '`
    [ $? -eq 0 ] && echo "${OUTPUT:2}"
}

function git_branch_part() {
    BRANCH="`get_git_branch`"
    [ ${#BRANCH} -gt 0 ] && echo -en "--<${COLOR2}${BRANCH}${COLOR1}>"
}

# Echoes correct hostname on Mac OS X and usual \h on other platforms.
function get_hostname() {
    if [[ $OS == "mac" ]]; then
        echo -n "$(scutil --get ComputerName)"
    else
        echo -n "\h"
    fi
}

PS1="${COLOR1}<${COLOR2}\u@\$(get_hostname)${COLOR1}>\$(git_branch_part)\n\w\$ ${COLOR_RESET}"
PS2="${COLOR1}$> ${COLOR_RESET}"

#############
# Functions #
#############

function init-git-config () {
    echo -n "Name? "
    read NAME
    echo -n "E-mail? "
    read EMAIL
    git config --global user.name "${NAME}"
    git config --global user.email "${EMAIL}"
    git config color.ui true
}

function init-mac-config () {
    # Computer name
    echo -n "Computer name? "
    read COMPUTER_NAME
    sudo scutil --set ComputerName "${COMPUTER_NAME}"
    sudo scutil --set HostName "${COMPUTER_NAME}"
    sudo scutil --set LocalHostName "${COMPUTER_NAME}"
    # Disable creating *.DS_Store files on network volumes
    defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
}

############################
# Additional customization #
############################

[ -e ~/.bashrc-addons ] && . ~/.bashrc-addons


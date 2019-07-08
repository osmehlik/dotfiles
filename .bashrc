#!/bin/bash
#
# ~/.bashrc
#
# Script executed during the start of an interactive shell.
#
# Oldrich Smehlik, <oldrich@smehlik.net>
#

# Source common parts
if [ -f ~/.commonrc ]; then
    . ~/.commonrc
fi

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

################
# Colored prompt

PS1="${COLOR1}<${COLOR2}\u@\$(get_hostname)${COLOR1}>\$(git_branch_part)\n\w\$ ${COLOR_RESET}"
PS2="${COLOR1}$> ${COLOR_RESET}"


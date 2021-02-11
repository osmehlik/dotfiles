#!/bin/bash

# Silence deprecated shell warning in macOS Catalina
export BASH_SILENCE_DEPRECATION_WARNING=1

# Disable sending Aggregate User Behaviour Analytics in Homebrew
# https://docs.brew.sh/Analytics
export HOMEBREW_NO_ANALYTICS=1

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


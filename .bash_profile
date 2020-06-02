#!/bin/bash

# Silence deprecated shell warning in macOS Catalina
export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


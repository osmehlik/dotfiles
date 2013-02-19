#!/bin/bash

FILES=".bashrc .bash_profile .vimrc"

function install () {
    echo "Installing symbolic links"
    for FILE in $FILES; do
        if [ -e ~/$FILE ]; then
            echo "~/$FILE already exists, skipping..."
        else
            ln -vs $PWD/$FILE ~/$FILE
        fi
    done
}

function uninstall () {
    echo "Uninstalling symbolic links"
    for FILE in $FILES; do
        if [ -L ~/$FILE ]; then
            rm -v ~/$FILE
        else
            echo "~/$FILE is not a symbolic link, skipping..."
        fi
    done
}

function help() {
    echo "Usage:"
    echo "$0 action"
    echo ""
    echo "Actions:"
    echo "   install"
    echo "   uninstall"
}

function main() {
    case "$1" in
        install) install ;;
        uninstall) uninstall ;;
        *) help ;;
    esac
}

main $*


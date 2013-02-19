#!/bin/bash

FILES=".bashrc .bash_profile .vimrc"

echo "Creating symbolic links"
for FILE in $FILES; do
    if [ -e ~/$FILE ]; then
        echo "~/$FILE already exists, skipping..."
    else
        ln -vs $PWD/$FILE ~/$FILE
    fi
done


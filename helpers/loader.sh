#!/bin/bash

load_all_scripts()  {
    local folder="$1"

    shopt -s globstar

    for filename in $USER_HOME/Documents/Resources/dotfiles/$folder/**/*.sh; do
        if [[ ${filename} != *"loader.sh" ]]; then
            source "$filename"
        fi
    done
}

load_all_scripts helpers

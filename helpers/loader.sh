#!/bin/bash

source $USER_HOME/Documents/Resources/dotfiles/helpers/delegation.sh

execute_all_scripts_from_folder()  {
    local folder="$1"

    shopt -s globstar

    for filename in $USER_HOME/Documents/Resources/dotfiles/$folder/**/*.sh; do
        if [[ ${filename} != *"loader.sh" ]]; then
            source "$filename"
        fi
    done
}

execute_all_scripts_from_folder helpers

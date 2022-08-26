#!/bin/bash

build_aliases() {
    head -2 $USER_HOME/Documents/Resources/dotfiles/ubuntu-customization/aliases/.bash_aliases > /tmp/.bash_aliases
    mv /tmp/.bash_aliases $USER_HOME/Documents/Resources/dotfiles/ubuntu-customization/aliases/.bash_aliases
    find * -name aliases.sh -exec cat {} \; >> $USER_HOME/Documents/Resources/dotfiles/ubuntu-customization/aliases/.bash_aliases
    log_info "Built aliases script"
}

syncronize_configuration() {
    rm -f $USER_HOME/.bash_aliases
    ln -sf $USER_HOME/Documents/Resources/dotfiles/ubuntu-customization/aliases/.bash_aliases $USER_HOME/.bash_aliases
    log_info "Set aliases"
}

build_aliases
syncronize_configuration

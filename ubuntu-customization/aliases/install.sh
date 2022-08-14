#!/bin/bash

build_aliases() {
    head -2 $HOME/Documents/Resources/dotfiles/ubuntu-customization/aliases/.bash_aliases > /tmp/.bash_aliases
    mv /tmp/.bash_aliases $HOME/Documents/Resources/dotfiles/ubuntu-customization/aliases/.bash_aliases
    find * -name aliases.sh -exec cat {} \; >> $HOME/Documents/Resources/dotfiles/ubuntu-customization/aliases/.bash_aliases
    log_info "Built aliases script"
}

syncronize_configuration() {
    rm $HOME/.bash_aliases
    ln -s $HOME/Documents/Resources/dotfiles/ubuntu-customization/aliases/.bash_aliases $HOME/.bash_aliases
    log_info "Set aliases"
}

build_aliases
syncronize_configuration

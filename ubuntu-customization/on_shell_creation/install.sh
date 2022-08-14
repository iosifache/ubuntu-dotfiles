#!/bin/bash

syncronize_configuration() {
    echo -e "\n$HOME/Documents/Resources/dotfiles/shell_creation.sh" >> $HOME/.bashrc
    log_info "Synchronized shell creation script"
}

syncronize_configuration

#!/bin/bash

install() {
    curl -sSL https://install.python-poetry.org | python3 -
    log_info "Installed Poetry via official script"
}

enable_completion() {
    mkdir -p $ZSH_CUSTOM/plugins/poetry
    poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
    log_info "Enabled Poetry completion for oh-my-zsh"
}

sync_configuration() {
    ln -sf $USER_HOME/Documents/Resources/dotfiles/utilities/poetry/config.toml $USER_HOME/.config/pypoetry/config.toml
}

install
enable_completion

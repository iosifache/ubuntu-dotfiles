#!/bin/bash

install() {
    curl -sSL https://install.python-poetry.org | python3 -
    log_info "Installed Poetry via official script"
}

enable_completion() {
    mkdir $ZSH_CUSTOM/plugins/poetry
    poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
    log_info "Enabled Poetry completion for oh-my-zsh"
}

sync_configuration() {
    ln -s $HOME/Documents/Resources/dotfiles/utilities/poetry/config.toml $HOME/.config/pypoetry/config.toml
}

install
enable_completion

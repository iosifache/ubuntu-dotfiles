#!/bin/bash

install() {
    install_through_apt deja-dup
}

sync_configuration() {
    ln -s $HOME/Documents/Resources/dotfiles/applications/git/.gitconfig $HOME/.gitconfig
}

install
sync_configuration

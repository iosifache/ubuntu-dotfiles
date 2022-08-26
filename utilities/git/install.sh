#!/bin/bash

install() {
    install_through_apt git
}

sync_configuration() {
    ln -sf $USER_HOME/Documents/Resources/dotfiles/utilities/git/.gitconfig $USER_HOME/.gitconfig
}

install
sync_configuration

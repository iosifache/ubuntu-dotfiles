#!/bin/bash

install() {
    install_through_apt zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
    log_info "Installed oh-my-zsh via unattended script"
}

sync_configuration() {
    rm $HOME/.zshrc
    ln -s $HOME/Documents/Resources/dotfiles/utilities/ohmyzsh/.zshrc $HOME/.zshrc
    log_info "Synchronized oh-my-zsh configuration"
}

set_as_default_shell()  {
    chsh -s $(which zsh)
    log_info "Set ZSH as default shell"
}

install
sync_configuration
set_as_default_shell

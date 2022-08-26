#!/bin/bash

install() {
    install_through_apt zsh
    wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O /tmp/zsh.sh
    chmod +x /tmp/zsh.sh
    execute_as_user ZSH=~/.oh-my-zsh /tmp/zsh.sh --skip-chsh --unattended
    log_info "Installed oh-my-zsh via unattended script"
}

sync_configuration() {
    rm $USER_HOME/.zshrc
    ln -sf $USER_HOME/Documents/Resources/dotfiles/utilities/ohmyzsh/.zshrc $USER_HOME/.zshrc
    log_info "Synchronized oh-my-zsh configuration"
}

set_as_default_shell()  {
    chsh -s $(which zsh) $TARGET_USER
    log_info "Set ZSH as default shell"
}

install
sync_configuration
set_as_default_shell

#!/bin/bash

create_main_folders() {
    mkdir -p $USER_HOME/Documents/Inbox
    mkdir -p $USER_HOME/Documents/Projects
    mkdir -p $USER_HOME/Documents/Resources
    mkdir -p $USER_HOME/Documents/Resources/Programs
    mkdir -p $USER_HOME/Documents/Resources/Screenshots
    log_info "Created main folders"
}

sync_screenshots()  {
    ln -sf $USER_HOME/Documents/Resources/Screenshots $USER_HOME/Pictures/Screenshots
    log_info "Linked screenshots folder"
}

copy_repository() {
    cp $USER_HOME/Desktop/dotfiles $USER_HOME/Documents/Resources/dotfiles
    log_info "Copied repository"
}

sync_ssh_keys() {
    ln -s $HOME/Documents/Resources/dotfiles/ubuntu-customization/ssh-keys $HOME/.ssh
}

create_main_folders
sync_screenshots
sync_ssh_keys
copy_repository
log_info "Set filesystem"

#!/bin/bash

create_main_folders() {
    mkdir $HOME/Documents/Inbox
    mkdir $HOME/Documents/Projects
    mkdir $HOME/Documents/Resources
    mkdir $HOME/Documents/Resources/Programs
    mkdir $HOME/Documents/Resources/Screenshots
    log_info "Created main folders"
}

sync_screenshots()  {
    ln -s $HOME/Documents/Resources/Screenshots $HOME/Pictures/Screenshots
    log_info "Linked screenshots folder"
}

download_repository() {
    git clone $DOTFILES_REPOSITORY
    log_info "Cloned dotfiles repository from $DOTFILES_REPOSITORY"
}

create_main_folders
sync_screenshots
clone_dotfiles_repo
log_info "Set filesystem"

#!/bin/bash

create_main_folders() {
    mkdir $HOME/Documents/Projects
    mkdir $HOME/Documents/Resources
    log_info "Created main folders"

}

download_repository() {
    git clone $DOTFILES_REPOSITORY
    log_info "Cloned dotfiles repository from $DOTFILES_REPOSITORY"
}

create_main_folders
clone_dotfiles_repo
log_info "Set filesystem"

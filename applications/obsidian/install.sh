#!/bin/bash

install() {
    install_through_flatpak md.obsidian.Obsidian
}

download_kb() {
    git clone $OBSIDIAN_KB_REPOSITORY $HOME/Documents
    log_info "Downloaded knowledge base from $OBSIDIAN_KB_REPOSITORY"
}

install
download_kb

#!/bin/bash

install() {
    wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb -o dropbox.deb
    dpkg -i dropbox.deb
    apt --fix-broken install
    log_info "Installed Dropbox via .deb package download and install"
}

create_shortcut() {
    ln  -s $HOME/Dropbox/ $HOME/Documents/Resources/
    log_info  "Created shortcut for synced folder"
}

install

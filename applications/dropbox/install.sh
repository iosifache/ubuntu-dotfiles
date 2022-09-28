#!/bin/bash

install() {
    wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb -O /tmp/dropbox.deb
    dpkg -i /tmp/dropbox.deb
    apt --fix-broken -y install
    log_info "Installed Dropbox via .deb package download and install"
}

create_shortcut() {
    ln -s $USER_HOME/Dropbox/ $USER_HOME/Documents/Resources/
    log_info  "Created shortcut for synced folder"
}

install

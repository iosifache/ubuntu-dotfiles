#!/bin/bash

install() {
    wget https://launchpad.net/veracrypt/trunk/1.25.9/+download/veracrypt-console-1.25.9-Ubuntu-22.04-amd64.deb -O /tmp/veracrypt.deb
    dpkg -i /tmp/veracrypt.deb
    log_info "Installed VeraCrypt via .deb package download and install"
}

install

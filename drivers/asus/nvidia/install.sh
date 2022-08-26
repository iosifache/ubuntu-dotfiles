#!/bin/bash

install() {
    ubuntu-drivers autoinstall
    log_info "Installed Nvidia GPU driver"
}

install

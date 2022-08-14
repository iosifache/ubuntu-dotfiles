#!/bin/bash

check_root() {
    if [ "$(whoami)" != root ]; then
        log_error "The required permissions are not offered. Please run the script\
 as root."

        exit
    fi

    log_info "Script running as root."
}

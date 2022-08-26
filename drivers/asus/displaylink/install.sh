#!/bin/bash

install() {
    wget https://www.synaptics.com/sites/default/files/exe_files/2022-08/DisplayLink%20USB%20Graphics%20Software%20for%20Ubuntu5.6.1-EXE.zip -o /tmp/displaylink.zip
    unzip /tmp/displaylink.zip
    chmod +x displaylink-driver-5.6.1-59.184.run
    /tmp/displaylink-driver-5.6.1-59.184.run
    log_info "Installed DisplayLink driver"
}

install

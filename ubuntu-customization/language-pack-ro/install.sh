#!/bin/bash

install() {
    apt-get install language-pack-ro language-pack-gnome-ro language-pack-ro-base language-pack-gnome-ro-base
    locale-gen
    log_info "Installed Romanian language pack"
}

configure_as_input_source() {
    execute_in_user_session gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'ro')]"
    log_info "Configured Romanian language pack as an input source"
}

install
configure_as_input_source

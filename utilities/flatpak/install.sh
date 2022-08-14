#!/bin/bash

install() {
    install_through_apt flatpak

    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
}

install

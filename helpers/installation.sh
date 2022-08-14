#!/bin/bash

install_through_apt() {
	local package="$1"

	apt install -y $1
	log_info "The package $package was installed via apt."
}

install_through_flatpak() {
	local package="$1"

	flatpak install flathub -y $1
	log_info "The package $package was installed via Flatpak."
}

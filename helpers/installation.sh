#!/bin/bash

install_through_apt() {
	local package="$1"

	apt install -y $package
	if [[ $package == *" "* ]]; then
		log_info "The packages $package were installed via apt."
	else
		log_info "The package $package was installed via apt."
	fi

}

install_through_flatpak() {
	local package="$1"

	flatpak install flathub -y $1
	log_info "The package $package was installed via Flatpak."
}

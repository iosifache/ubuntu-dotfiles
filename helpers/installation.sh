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

	flatpak install flathub -y $package
	log_info "The package $package was installed via Flatpak."
}

install_through_pip() {
	local package="$1"

	execute_as_user pip install $package
	log_info "The package $package was installed via pip."
}

install_through_snap() {
	local package="$1"

	snap install $package --classic
	log_info "The package $package was installed via Snap."
}

#!/bin/bash

install()  {
	add_repository
	install_through_apt papirus-icon-theme
}

add_repository() {
	add-apt-repository -y ppa:papirus/papirus
	apt-get update
	log_info "Added Papirus repository"
}

set_icon_theme()  {
	gsettings set org.gnome.desktop.interface icon-theme Papirus
	log_info "Set Papirus as icon theme"
}

install
set_icon_theme

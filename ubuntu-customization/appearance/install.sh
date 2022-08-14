configure_dock() {
	gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
	log_info "Hidden Trash icon in Dock"
	gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 16
	log_info "Set icon size in Dock"
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
	log_info "Set Dock position to bottom"
	gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button false
	log_info "Hidden 'Show Applications' icon in Dock"
	gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor
	log_info "Set Dock to appear on each monitor"
}

configure_desktop() {
	gsettings set org.gnome.shell.extensions.ding show-home false
	log_info "Hidden Home directory from desktop"
}

configure_nautilus() {
	gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
	log_info "Set default view as list in Nautilus"
}

configure_file_system
configure_dock
configure_desktop
configure_nautilus
log_info "Set operating system appearance"

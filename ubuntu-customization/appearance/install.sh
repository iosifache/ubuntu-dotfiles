configure_dock() {
	execute_in_user_session gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
	log_info "Hidden Trash icon in Dock"
	execute_in_user_session gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 16
	log_info "Set icon size in Dock"
	execute_in_user_session gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
	log_info "Set Dock position to bottom"
	execute_in_user_session gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button false
	log_info "Hidden Show Applications icon in Dock"
	execute_in_user_session gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor
	log_info "Set Dock to appear on each monitor"
	execute_in_user_session gsettings set org.gnome.shell favorite-apps "[]"
	log_info "Removes favorites from Dock"
}

configure_desktop() {
	execute_in_user_session gsettings set org.gnome.desktop.background picture-uri "file://"$USER_HOME"/Documents/Resources/dotfiles/ubuntu-customization/appearance/background.png"
	log_info "Set desktop image"
	execute_in_user_session gsettings set org.gnome.shell.extensions.ding show-home false
	log_info "Hidden Home directory from desktop"

}

configure_nautilus() {
	execute_in_user_session gsettings set org.gnome.nautilus.preferences default-folder-viewer "list-view"
	log_info "Set default view as list in Nautilus"
}

configure_profile() {
	wget $PROFILE_IMAGE -O $USER_HOME/.face
	log_info "Downloaded and set profile image"
}

configure_file_system
configure_dock
configure_desktop
configure_nautilus
configure_profile
log_info "Set operating system appearance"

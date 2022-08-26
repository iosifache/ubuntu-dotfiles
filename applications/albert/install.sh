install() {
    add_repository
    install_through_apt albert
}

add_repository() {
    echo "deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_22.04/ /" | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
    curl -fsSL https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_manuelschneid3r.gpg > /dev/null
    apt update
    log_info "Added Albert custom repository"
}

setup_autostart() {
    ln -sf /usr/share/applications/albert.desktop $USER_HOME/.config/autostart/
    log_info "Added Albert for autostart"
}

sync_configuration() {
    rm -f $USER_HOME/.config/albert
    ln -sf $USER_HOME/Documents/Resources/dotfiles/applications/albert $USER_HOME/.config/albert
    log_info "Synchronized Albert configuration"
}

install
setup_autostart
sync_configuration

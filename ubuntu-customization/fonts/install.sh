sync_fonts() {
    ln -sf $USER_HOME/Documents/Resources/dotfiles/ubuntu-customization/fonts/fonts $USER_HOME/.fonts
    log_info "Synchronized fonts"
}

sync_fonts

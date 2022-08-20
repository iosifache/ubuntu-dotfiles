sync_fonts() {
    ln -s $HOME/Documents/Resources/dotfiles/ubuntu-customization/fonts/fonts $HOME/.fonts
    log_info "Synchronized fonts"
}

sync_fonts

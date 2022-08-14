build_mimes() {
    head -1 $HOME/Documents/Resources/dotfiles/ubuntu-customization/mime/mimeapps.list
    find * -name mimes.txt -exec cat {} \; >> $HOME/Documents/Resources/dotfiles/ubuntu-customization/mime/mimeapps.list
    log_info "Built MIME list"
}

syncronize_configuration() {
    ln -s $HOME/Documents/Resources/dotfiles/ubuntu-customization/mime/mimeapps.list $HOME/.local/share/applications/mimeapps.list
    log_info "Synchronized MIME list"
}

build_mimes
syncronize_configuration
log_info "Set MIME types"

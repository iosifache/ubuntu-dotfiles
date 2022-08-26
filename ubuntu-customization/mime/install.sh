build_mimes() {
    head -1 $USER_HOME/Documents/Resources/dotfiles/ubuntu-customization/mime/mimeapps.list
    find * -name mimes.txt -exec cat {} \; >> $USER_HOME/Documents/Resources/dotfiles/ubuntu-customization/mime/mimeapps.list
    log_info "Built MIME list"
}

syncronize_configuration() {
    ln -sf $USER_HOME/Documents/Resources/dotfiles/ubuntu-customization/mime/mimeapps.list $USER_HOME/.local/share/applications/mimeapps.list
    log_info "Synchronized MIME list"
}

build_mimes
syncronize_configuration
log_info "Set MIME types"

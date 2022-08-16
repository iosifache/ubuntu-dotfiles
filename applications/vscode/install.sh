install() {
    snap install codium --classic
}

set_as_default_editor() {
    update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor /snap/bin/codium 100
    log_info "Added VSCodium as the default text editor"
}

sync_configuration() {
    rm $HOME/.config/VSCodium/User/settings.json
    ln -s $HOME/Documents/Resources/dotfiles/applications/vscode/settings.json $HOME/.config/VSCodium/User/settings.json
    log_info "Synchronized VSCodium configuration"
}

install
set_as_default_editor
sync_configuration

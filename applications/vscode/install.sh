install() {
    snap install codium --classic
}

set_as_default_editor() {
    update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor /snap/bin/codium 100
    log_info "Added VSCodium as the default text editor"
}

sync_configuration() {
    rm -f $USER_HOME/.config/VSCodium/User/settings.json
    ln -sf $USER_HOME/Documents/Resources/dotfiles/applications/vscode/settings.json $USER_HOME/.config/VSCodium/User/settings.json
    log_info "Synchronized VSCodium configuration"
}

install_extensions()  {
    cat $USER_HOME/applications/vscode/extensions.json | sed 's/ *\/\/.*//' | jq .recommendations | egrep '".*"'   | tr -d ,\" | xargs  -I % sh -c 'codium --force --install-extension %'
    log_info "Installed VSCodium extensions"
}

install
set_as_default_editor
sync_configuration
install_extensions

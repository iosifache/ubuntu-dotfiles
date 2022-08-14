#!/bin/sh

import_config() {
    declare $(env -i $(cat $HOME/Documents/Resources/dotfiles/dotfiles.conf))

    log_info "Imported configuration"
}

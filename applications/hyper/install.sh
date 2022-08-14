#!/bin/bash

install() {
	wget https://releases.hyper.is/download/deb -o /tmp/hyper.deb
	dpkg -i /tmp/hyper.deb
	log_info "Installed Hyper via .deb package"

}

set_as_default_terminal() {
	update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $(which hyper) 100
	log_info "Added Hyper as the default terminal"
}

sync_configuration() {
	rm $HOME/.hyper.js
	ln -s $HOME/Documents/Resources/dotfiles/applications/hyper/.hyper.js $HOME/.hyper.js
	log_info "Synchronized Hyper configuration"
}

install
set_as_default_terminal
sync_configuration

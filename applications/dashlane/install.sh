#!/bin/bash

install() {
    wget https://github.com/Dashlane/dashlane-cli/releases/download/v1.0.0/dcli-linux -O $HOME/Documents/Resources/Programs/dashlane
    chmod +x $HOME/Documents/Resources/Programs/dashlane
}

install

#!/bin/bash

install() {
    wget https://github.com/Dashlane/dashlane-cli/releases/download/v1.0.0/dcli-linux -O $USER_HOME/Documents/Resources/Programs/dashlane
    chmod +x $USER_HOME/Documents/Resources/Programs/dashlane
}

install

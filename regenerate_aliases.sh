#!/bin/bash

# Prepare some environment variables
if [[ -z ${TARGET_USER}   ]]; then
    exit
fi
export USER_HOME=/home/$TARGET_USER

# Import the helper functions
source $USER_HOME/Documents/Resources/dotfiles/helpers/loader.sh

# Reinstall the aliases
source $USER_HOME/Documents/Resources/dotfiles/ubuntu-customization/aliases/install.sh

# Success!
log_success "The aliases were regenerated!"

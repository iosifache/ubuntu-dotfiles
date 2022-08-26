#!/bin/bash

# Prepare some environment variables
if [[ -z ${TARGET_USER}   ]]; then
    exit
fi
export USER_HOME=/home/$TARGET_USER

# Import the helper functions
source $USER_HOME/Desktop/dotfiles/helpers/loader.sh

# Check if the script is run as root
check_root

# Import the configuration
import_config

# Setup the file system
source $USER_HOME/Desktop/dotfiles/ubuntu-customization/setup_filesystem.sh

# Update the apt reposiories
apt update
log_info "Updates apt repositories"

# Run each installation script
load_all_scripts utilities
load_all_scripts drivers/$HOSTNAME
load_all_scripts ubuntu-customization
load_all_scripts applications

# Success!
log_success "Horray! All is set up. Please don't forget to:\n    - Reboot your computer.\n    - Log in into Dropbox.\n    - Configure Deja Dup.\n    - Log in into Dashlane."

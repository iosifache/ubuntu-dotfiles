#!/bin/bash

# Import the helper functions
source $USER_HOME/Desktop/dotfiles/helpers/loader.sh

# Prepare some environment variables
if [[ -z ${TARGET_USER}   ]]; then
    log_error "The TARGET_USER environment variable must be set before running then script."

    exit
fi
export USER_HOME=/home/$TARGET_USER

# Check if the script is run as root
check_root

# Setup the file system
source $USER_HOME/Desktop/dotfiles/filesystem/setup.sh

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

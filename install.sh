#!/bin/bash

# Import the helper functions
source $HOME/Documents/Resources/dotfiles/helpers/loader.sh

# Check if the script is run as root
check_root

# Import the configuration
import_config

# Setup the file system
source $HOME/Documents/Resources/dotfiles/ubuntu-customization/setup_filesystem.sh

# Run each installation script
load_all_scripts utilities/*
load_all_scripts drivers/*
load_all_scripts ubuntu-customization/*
load_all_scripts applications/*

# Success!
log_success "Horray! All is set up. Please don't forget to:\n- Reboot your computer.\n- Log in into Dropbox.\n- Configure Deja Dup.\n- Log in into Dashlane.\n"

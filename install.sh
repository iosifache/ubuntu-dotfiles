#!/bin/bash

# Import the helper functions
helpers/*.sh

# Check if the script is run as root
check_root

# Import the configuration
import_config

# Setup the file system
ubuntu-customization/setup_filesystem.sh

# Run each installation script
find ./utilities -name install.sh -exec {} \;
find ./drivers -name install.sh -exec {} \;
find ./ubuntu-customization -name install.sh -exec {} \;
find ./applications -name install.sh -exec {} \;

# Success!
log_success "Horray! All is set up. Please don't forget to:\n- Reboot your computer.\n- Log in into Dropbox.\n- Configure Deja Dup."

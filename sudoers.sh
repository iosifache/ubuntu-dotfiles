#!/bin/bash

# source $USER_HOME/Desktop/dotfiles/helpers/logging.sh
source /home/$TARGET_USER/Documents/Resources/dotfiles/helpers/logging.sh

if [ $# -ne 1 ]; then
    log_error "Please give an action as the second argument: 'add' or 'remove'."

    exit
fi

if [ $1 == 'add' ]; then
    # echo '$TARGET_USER  ALL=(ALL:ALL) ALL' >> /etc/sudoers
    echo "ADD"
elif [ $1 == 'remove' ]; then
    # head -n -1 /etc/sudoers > /tmp/sudoers
    # mv /tmp/sudoers /etc/sudoers
    echo "REMOVE"
else
    log_error "The passed option is invalid."
fi

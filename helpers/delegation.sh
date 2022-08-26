#!/bin/sh

function execute_in_user_session() {
    user_id=$(id -u "$TARGET_USER")

    sudo -H -u $TARGET_USER DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$user_id/bus "$@"
}

function execute_as_user() {
    sudo -u $TARGET_USER "$@"
}

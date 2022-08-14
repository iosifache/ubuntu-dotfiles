#!/bin/bash

readonly FONT_COLOR_BLUE="\e[0;94m"
readonly FONT_COLOR_GREEN="\e[0;92m"
readonly FONT_COLOR_RED="\e[0;91m"
readonly FONT_RESET="\e[0m"

log_info() {
	local message="$1"

	echo -ne "${FONT_COLOR_BLUE}[i]${FONT_RESET} $message\n"
}

log_success() {
	local message="$1"

	echo -ne "${FONT_COLOR_GREEN}[+]${FONT_RESET} $message\n"
}

log_error() {
	local message="$1"

	echo -ne "${FONT_COLOR_RED}[!]${FONT_RESET} $message\n"
}

log_error_and_exit() {
	log_error "An error occured. The script is exiting."
	exit 1
}

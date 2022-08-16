#!/bin/bash

install() {
    setup_repository
    install_through_apt "docker-ce docker-ce-cli containerd.io docker-compose-plugin"
}

setup_repository() {
    apt-get     install ca-certificates curl gnupg lsb-release
    mkdir -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    echo  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable" \
        | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    apt-get update
    log_info "Set Docker repository"
}

install

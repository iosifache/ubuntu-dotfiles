#!/bin/bash

alias go-hyper="hyper"
alias go-firefox="firefox"
alias go-deja-dup="deja-dup"
alias go-codium="/snap/bin/codium"
alias dash="$HOME/Documents/Resources/Programs/dashlane"
alias dash-note="$HOME/Documents/Resources/Programs/dashlane note"
alias dash-pass="$HOME/Documents/Resources/Programs/dashlane password"
alias go-inkscape="inkscape"
alias go-virtualbox="virtualbox"
alias go-calibre="calibre"
alias go-obsidian="flatpak run md.obsidian.Obsidian"
alias go-office="flatpak run com.github.micahflee.torbrowser-launcher"
alias go-office="flatpak run org.libreoffice.LibreOffice"
alias go-vlc="vlc"
alias docker-container-ls="docker container ls -a"
alias docker-container-killall="docker ps -q | xargs docker stop | xargs docker rm"

docker-container-exec-bash() {
    local container_id="$1"

    docker exec --interactive --tty $container_id /bin/bash
}

docker-container-exec-shell() {
    local container_id="$1"

    docker exec --interactive --tty $container_id /bin/sh
}
alias git-commit="git commit -s -m"
alias git-status-all="git status -uall"
alias git-push="git push origin"
alias git-add-all="git add -A"

git-commit-push()  {
    local message=$1
    local branch=$2

    git add --all
    git commit --signoff --message $message
    git push origin $branch

}

git-amend()  {
    git add --all
    git commit --amend --no-edit
}

git-amend-push()  {
    local branch=$1

    git add --all
    git commit --amend --no-edit
    git push --force origin $branch
}
alias send-to-clip="xclip -selection clipboard"
eval $($HOME/.local/bin/thefuck --alias)

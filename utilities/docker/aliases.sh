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

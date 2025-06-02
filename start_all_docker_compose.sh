#!/bin/bash

docker_compose_start() {
    local dir="$1"
    cd "$dir" || return

    # If there is a docker-compose.yml, run docker-compose up
    if [ -f "docker-compose.yml" ]; then
        echo "Запускаю docker-compose в: $dir"
        docker-compose up -d
    fi

}

# Main cycle - process all subdirectories of the current directory
for dir in */; do
    if [ -d "$dir" ] && [[ "$dir" != .* ]]; then
        docker_compose_start "$dir"
        cd .. || exit
    fi
done
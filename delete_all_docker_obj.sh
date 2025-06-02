#!/bin/bash

# Remove all containers
echo "Removing all containers..."
# shellcheck disable=SC2046
docker rm -f "$(docker ps -aq)" 2>/dev/null || echo "No containers to remove"

# Remove all custom networks (excluding built-in: bridge, host, none)
echo "Removing all custom networks..."
docker network rm "$(docker network ls -q --filter type=custom)" 2>/dev/null || echo "No networks to remove"

# Remove all volumes
echo "Removing all volumes..."
docker volume rm "$(docker volume ls -q)" 2>/dev/null || echo "No volumes to remove"

# Clean build cache
echo "Cleaning build cache..."
docker builder prune -f

# Remove dangling images (intermediate layers)
echo "Removing temporary images..."
docker image prune -f

echo "Done! All Docker objects have been removed except downloaded images."
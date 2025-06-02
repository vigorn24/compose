#!/bin/bash

NETWORK_NAME="compose"

# Check if the network already exists
if docker network inspect "$NETWORK_NAME" >/dev/null 2>&1; then
    echo "Network '$NETWORK_NAME' already exists"
else
    # Create the network
    docker network create "$NETWORK_NAME"

    # Check if creation was successful
    if [ $? -eq 0 ]; then
        echo "Network '$NETWORK_NAME' created successfully"
    else
        echo "Error creating network '$NETWORK_NAME'" >&2
        exit 1
    fi
fi
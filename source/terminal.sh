#!/bin/bash

# Find the container ID of the running ROS container
CONTAINER_ID=$(docker ps | grep 'ridgeback_image' | awk '{print $1}')

# Check if the container is found
if [ -z "$CONTAINER_ID" ]; then
    echo "ROS container not found. Make sure it's running."
    exit 1
fi

# Open a new terminal in the found container
docker exec -it $CONTAINER_ID bash

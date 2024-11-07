#!/bin/bash

# Define the Dockerfile path and image name
DOCKERFILE_PATH="."
IMAGE_NAME="pymarketsim:latest"

# Run the docker build command
docker build -t $IMAGE_NAME $DOCKERFILE_PATH

# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "Docker image built successfully: $IMAGE_NAME"
else
    echo "Docker build failed"
    exit 1
fi
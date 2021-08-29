#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=philippmt/ml

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker image tag ml $dockerpath
docker login --username philippmt

# Step 3:
# Push image to a docker repository
docker push $dockerpath
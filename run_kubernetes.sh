#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=philippmt/ml

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml \
    --image=$dockerpath \
    --port=80 --labels app=ml \
    -n default

# Step 3:
# List kubernetes pods
kubectl get pods -n default

# Step 4:
# Forward the container port to a host
echo "Sleep for few seconds to wait for pod to be ready"
sleep 10

kubectl port-forward ml 8000:80 -n default
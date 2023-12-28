#!/bin/bash

# Build the Docker image
docker build -t karsajobs-ui:v1 .

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs-ui:v1 ghcr.io/janwtr/a433-microservices/karsajobs-ui:v1

# Login to GitHub Package
GITHUB_TOKEN=${GITHUB_PAT}
echo $GITHUB_TOKEN | docker login ghcr.io -u janwtr@gmail.com --password-stdin

# Push the image to GitHub Package
docker push ghcr.io/janwtr/a433-microservices/karsajobs-ui:v1
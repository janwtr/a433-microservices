#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .

# 2. Melihat daftar image di lokal
docker images

# 3. Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/janwtr/a433-microservices/item-app:v1

# 4. Login ke GitHub Packages via Terminal
# Membaca token dari environtment variabel
GITHUB_TOKEN=${GITHUB_PAT}
echo $GITHUB_TOKEN | docker login ghcr.io -u janwtr@gmail.com --password-stdin

# 5. Mengunggah image ke GitHub Packages
docker push ghcr.io/janwtr/a433-microservices/item-app:v1
